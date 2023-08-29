package com.IsacFlix.main.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.IsacFlix.main.entities.Episodios;

public interface episodiosRepository extends JpaRepository<Episodios, Long> {
	List<Episodios> findByAnimeId(Long animeId);
	
}
