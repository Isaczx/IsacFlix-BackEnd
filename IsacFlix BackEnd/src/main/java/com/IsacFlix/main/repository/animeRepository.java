package com.IsacFlix.main.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.IsacFlix.main.entities.Anime;

public interface animeRepository extends JpaRepository<Anime, Long> {
	List<Anime> findByNomeContaining(String nome);
	
}