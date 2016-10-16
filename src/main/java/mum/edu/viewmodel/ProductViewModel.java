package mum.edu.viewmodel;

import javax.validation.Valid;

import org.springframework.web.multipart.MultipartFile;
import com.fasterxml.jackson.annotation.JsonIgnore;

import mum.edu.domain.Product;

public class ProductViewModel {
	@Valid
	private Product product;
//	@JsonIgnore 
//	private MultipartFile  productImage;
	
//	@JsonIgnore 
//	private MultipartFile  productThumbnail;

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

//	public MultipartFile getProductImage() {
//		return productImage;
//	}
//
//	public void setProductImage(MultipartFile productImage) {
//		this.productImage = productImage;
//	}
//
//	public MultipartFile getProductThumbnail() {
//		return productThumbnail;
//	}
//
//	public void setProductThumbnail(MultipartFile productThumbnail) {
//		this.productThumbnail = productThumbnail;
//	}
	
	
}
