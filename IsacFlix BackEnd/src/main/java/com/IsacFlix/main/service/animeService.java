package com.IsacFlix.main.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.IsacFlix.main.entities.Anime;
import com.IsacFlix.main.repository.animeRepository;

@Service
public class animeService {

	@Autowired
	private animeRepository repository;

	public List<Anime> findAll() {
		return repository.findAll();
	}

	public Anime findById(Long id) {
		Optional<Anime> obj = repository.findById(id);
		return obj.get();
	}

	public List<Anime> findByName(String nome) {
		return repository.findByNomeContaining(nome);
	}
	
	
}
