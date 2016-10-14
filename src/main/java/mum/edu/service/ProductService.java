package mum.edu.service;

import java.util.List;

import mum.edu.domain.Product;

public interface ProductService {

	public List<Product> getAll();
	public Product getById(Long id);
	public long save(Product product);
	public boolean delete(Long id);
}
