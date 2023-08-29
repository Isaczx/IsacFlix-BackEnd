package com.IsacFlix.main.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.IsacFlix.main.repository.usuarioRepository;

@Service
public class AutorizacaoService implements UserDetailsService {
	
	@Autowired
	usuarioRepository repository;
	
	@Override
	public UserDetails loadUserByUsername(String useremail) throws UsernameNotFoundException {
		
		return repository.findByEmail(useremail);
	}

}
