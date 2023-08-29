package com.IsacFlix.main.recource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.IsacFlix.main.entities.Episodios;
import com.IsacFlix.main.service.episodiosService;

@RestController
@RequestMapping(value = "/episodios")
public class episodiosRecource {
	
	@Autowired
	private episodiosService service;

	@GetMapping
	public ResponseEntity<List<Episodios>> findAll() {
		List<Episodios> lista = service.findAll();

		return ResponseEntity.ok().body(lista);
	}

	@GetMapping(value = "/{id}")
	public ResponseEntity<Episodios> findById(@PathVariable Long id) {
		Episodios obj = service.findById(id);
		return ResponseEntity.ok().body(obj);
	}
	
	@GetMapping(value = "/Anime/{anime_id}")
	public ResponseEntity<List<Episodios>> findByAnimeId(@PathVariable Long anime_id){
		List<Episodios> lista =service.findByAnimeId(anime_id);
		
		return ResponseEntity.ok().body(lista);
	}

}
