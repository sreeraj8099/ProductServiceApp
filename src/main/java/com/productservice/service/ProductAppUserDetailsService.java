package com.productservice.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.productservice.entity.User;
import com.productservice.repo.ProductRepo;
import com.productservice.repo.UserRepo;

@Service
public class ProductAppUserDetailsService implements UserDetailsService{

	@Autowired
	UserRepo userRepo;
	
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		Optional<User> user=userRepo.findByUserName(userName);
		
		user.orElseThrow(() -> new UsernameNotFoundException(userName+" user does n't exist"));
	
		return user.map(ProductAppUserDetails::new).get();
	}

	
}
