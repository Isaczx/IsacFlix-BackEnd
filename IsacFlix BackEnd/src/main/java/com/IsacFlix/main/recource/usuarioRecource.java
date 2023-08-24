package com.IsacFlix.main.recource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
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
	
	@GetMapping(value = "/{id}")
	public ResponseEntity<usuario> findById(@PathVariable Long id){
		usuario obj = service.findById(id);
		
		return ResponseEntity.ok().body(obj);
	}
	
}
