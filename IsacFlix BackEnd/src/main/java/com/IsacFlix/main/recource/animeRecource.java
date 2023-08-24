package com.IsacFlix.main.recource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.IsacFlix.main.entities.Anime;
import com.IsacFlix.main.service.animeService;

@RestController
@RequestMapping(value = "/animes")
public class animeRecource {

	@Autowired
	private animeService service;

	@GetMapping
	public ResponseEntity<List<Anime>> findAll() {
		List<Anime> lista = service.findAll();
		return ResponseEntity.ok().body(lista);
	}

	@GetMapping(value = "/{id}")
	public ResponseEntity<Anime> findById(@PathVariable Long id) {
		Anime obj = service.findById(id);
		return ResponseEntity.ok().body(obj);
	}

	@GetMapping(value = "/Nome/{nome}")
	public ResponseEntity<List<Anime>> findByName(@PathVariable String nome) {
		List<Anime> lista = service.findByName(nome);
		return ResponseEntity.ok().body(lista);
	}

}
