package com.IsacFlix.main.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.IsacFlix.main.entities.usuario;
import com.IsacFlix.main.repository.usuarioRepository;

@Service
public class usuarioService {
	
	@Autowired
	private usuarioRepository repository;
	
	
	public List<usuario> findAll(){
		return repository.findAll();
	}
	
	public usuario findById(Long id){
		Optional<usuario> obj = repository.findById(id);
		return obj.get();
	}
	
	public UserDetails findByName(String nome) {
		return repository.findByName(nome);
	}
	
	public UserDetails findByEmail(String email) {
		return repository.findByEmail(email);
	}
	
	public UserDetails findByCPF(String CPF) {
		return repository.findByCPF(CPF);
	}
	
	public UserDetails findByEmailAndCPF(String email , String CPF) {
		return repository.findByEmailAndCPF(email , CPF);
	}
}
