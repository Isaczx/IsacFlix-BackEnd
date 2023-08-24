package com.IsacFlix.main.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

//@Entity Essa anotação é usada para indicar que uma classe Java deve ser mapeada para uma tabela em um banco de dados relacional.
@Entity
@Table(name = "usuarios")
public class usuario implements Serializable, UserDetails {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "nome")
	private String name;
	private String senha;
	

	public usuario() {

	}

	public usuario(String name, String senha) {
		super();
		this.name = name;
		this.senha = senha;
		
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		 List<GrantedAuthority> authorities = new ArrayList<>();
		 authorities.add(new SimpleGrantedAuthority("ROLE_USER")); // Usando o nome "ROLE_ADMIN" como exemplo
		    
			//return List.of(new SimpleGrantedAuthority("ROLE_USER"));
		 return authorities;
	}

	@Override
	public String getUsername() {

		return name;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return senha;
	}

	

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		usuario other = (usuario) obj;
		return Objects.equals(id, other.id);
	}

}
