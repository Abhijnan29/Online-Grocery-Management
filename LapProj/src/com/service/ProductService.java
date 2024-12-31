package com.service;

import java.util.ArrayList;

import com.beans.ProductDetails;
import com.dao.ProductDAO;

public class ProductService {
    ProductDAO productdao= new ProductDAO();
    public int addproducts(ProductDetails product) {
        return productdao.addProduct(product);
    }
    public ArrayList<ProductDetails> fetchAllProducts()
    {
        return productdao.fetchAllProduct();
    }
    public int updateProductBypId(ProductDetails product)
    {
        return productdao.updateProductByproId(product);
    }
    public int deleteproductBypid(int pid)
    {
        return productdao.deleteProductBypId(pid);
    }
}