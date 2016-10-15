package mum.edu.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.google.common.util.concurrent.Service;

import mum.edu.domain.Product;
import mum.edu.service.ProductService;
import mum.edu.viewmodel.ProductViewModel;

@Controller
@RequestMapping(value="/product")
public class ProductController {
	
	@Autowired
	ProductService productService;


	@RequestMapping(value="/detail/{id}")
	public String getProductDetail(@PathVariable("id") Long id, Model model) {
		if (id == null)
			throw new RuntimeException("Student is not valid!");

		model.addAttribute("product", productService.getById(id));
		
		return "ViewProductDetail";
		
	}
	
	@RequestMapping(value="/add", method = RequestMethod.GET)
    public String inputProduct(Model model) {
		model.addAttribute("productForm", new Product());
		
		return "AddProduct";
    }
	@RequestMapping(value="/update/{id}", method = RequestMethod.GET)
    public String updateProduct(@PathVariable("id") Long id, Model model) {
		Product product = productService.getById(id);
		model.addAttribute("productForm", product);
		
		return "AddProduct";
    }
	
	@RequestMapping(value="/delete/{id}", method = RequestMethod.GET)
    public String productManagement(@PathVariable("id") Long id) {
		productService.delete(id);
		return "productManagement";
    }
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String inputProduct(@Valid @ModelAttribute("productForm") Product product,
			BindingResult result, HttpServletRequest request,
			@RequestParam(value = "productImage", required = false) MultipartFile image,
			@RequestParam(value = "productThumbnail", required = false) MultipartFile thumbnail) {
		if (result.hasErrors())
			return "product/productAdd";

//		Vendor owner = studentService
//				.getStudentByUserName(SecurityContextHolder.getContext().getAuthentication().getName());
		
		Long id = productService.save(product);

		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		
		String imageDirectory = "resources\\images\\product\\" + id + "_image.png";
		SaveImage(image, rootDirectory, imageDirectory);

		String thumbnailDirectory = "resources\\images\\product\\" + id + "_thumbnail.png";
		SaveImage(thumbnail, rootDirectory, thumbnailDirectory);

		product.setImage(imageDirectory.replace("\\", "/"));
		product.setThumbnail(thumbnailDirectory.replace("\\", "/"));
		product.setId(id);
		productService.save(product);

		return "redirect:/product/detail/" + id;
	}
	
	private void SaveImage(MultipartFile image, String rootDirectory, String fileDirectory){
		
		if (image != null && !image.isEmpty()) {
			try {
				image.transferTo(new File(rootDirectory + fileDirectory));
			} catch (Exception e) {
				System.out.println("Product Image saving failed" + e.getMessage());
				throw new RuntimeException("Product Image saving failed", e);
			}
		}
	}
	
	@RequestMapping(value={"/", "/products"}, method = RequestMethod.GET)
    public String getAllProduct(Model model) {
		List<Product> products = productService.getAll();
		
		model.addAttribute("products", products);
		
		return "BrowserProducts";
    }
	
	@RequestMapping(value="/management", method = RequestMethod.GET)
    public String productManagement(Model model) {
		List<Product> products = productService.getAll();
		
		model.addAttribute("products", products);
		
		return "ProductManagement";
    }

}
