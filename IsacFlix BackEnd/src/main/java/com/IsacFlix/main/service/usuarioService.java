package com.IsacFlix.main.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
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
}
