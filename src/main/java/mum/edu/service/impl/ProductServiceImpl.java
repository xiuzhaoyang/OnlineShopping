package mum.edu.service.impl;

import java.util.List;

import mum.edu.domain.Product;
import mum.edu.repository.ProductRepository;
import mum.edu.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Lists;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductRepository repo;
	@Override
	public List<Product> getAll() {
		// TODO Auto-generated method stub
		return Lists.newArrayList(repo.findAll());
	}

	@Override
	public Product getById(Long id) {
		// TODO Auto-generated method stub
		
		return repo.findOne(id);
	}

	@Override
	public long save(Product product) {
		// TODO Auto-generated method stub
		return repo.save(product).getId();
		//return true;
	}

	@Override
	public boolean delete(Long id) {
		// TODO Auto-generated method stub
		repo.delete(id);
		return true;
	}

}
