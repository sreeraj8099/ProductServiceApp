package com.productservice.repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.productservice.entity.Product;

public interface ProductRepo extends JpaRepository<Product, Integer>{
}