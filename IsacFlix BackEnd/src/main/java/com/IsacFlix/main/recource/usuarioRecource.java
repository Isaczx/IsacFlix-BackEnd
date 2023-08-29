package com.IsacFlix.main.recource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.IsacFlix.main.entities.usuario;
import com.IsacFlix.main.service.usuarioService;


//A anotação @RestController é uma parte importante do Spring Framework e é usada para criar controladores em uma aplicação Spring
//que tratam solicitações HTTP e retornam respostas no formato de dados, como JSON ou XML
@RestController
@RequestMapping(value = "/lista")
public class usuarioRecource {
	
	@Autowired
	private usuarioService service;
	
	@GetMapping
	public ResponseEntity<List<usuario>> findAll(){
		List<usuario> lista = service.findAll();		
		return ResponseEntity.ok().body(lista);
	}
	
	
	
	@GetMapping(value = "/{nome}")
	public ResponseEntity<UserDetails> findByName(@PathVariable String nome) {
		UserDetails obj = service.findByName(nome);
		return ResponseEntity.ok().body(obj);
	}
	
	@GetMapping(value = "/email/{email}")
	public ResponseEntity<UserDetails> findByEmail(@PathVariable String email){
		UserDetails obj = service.findByEmail(email);
		return ResponseEntity.ok().body(obj);
	}
	
	@GetMapping(value = "/CPF/{CPF}")
	public ResponseEntity<UserDetails> findByCPF (@PathVariable String CPF){
		UserDetails obj = service.findByCPF(CPF);
		return ResponseEntity.ok().body(obj);
	}
	
	
}
