package com.IsacFlix.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.security.core.userdetails.UserDetails;

import com.IsacFlix.main.entities.usuario;

public interface usuarioRepository extends JpaRepository <usuario ,Long>{
	
	UserDetails findByName(String name);
}
