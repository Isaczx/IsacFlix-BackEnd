package com.IsacFlix.main.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.IsacFlix.main.entities.Episodios;
import com.IsacFlix.main.repository.episodiosRepository;

@Service
public class episodiosService {
	
	@Autowired
	private episodiosRepository repository;
	
	public List<Episodios> findAll(){
		return repository.findAll();
	}
	
	public Episodios findById(Long id) {
		Optional<Episodios> obj = repository.findById(id);
		return obj.get();
	}
	
	public List<Episodios> findByAnimeId(Long anime_id){
		return repository.findByAnimeId(anime_id);
	}

}
