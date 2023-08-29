package com.IsacFlix.main.entities;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "anime")
public class Anime implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String nome;
	private String descricao;
	private String imagem;
	
	@JsonIgnore
	@OneToMany(mappedBy = "anime")
	private List<Episodios> episodios;
	
	
 
	public Anime(String nome, String decricao, String imagem, Episodios episodios) {
		super();
		this.nome = nome;
		this.descricao = decricao;
		this.imagem = imagem;
		
	}

	public Anime() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDecricao() {
		return descricao;
	}

	public void setDecricao(String decricao) {
		this.descricao = decricao;
	}

	public String getImagem() {
		return imagem;
	}

	public void setImagem(String imagem) {
		this.imagem = imagem;
	}

	public List<Episodios> getEpisodios() {
		return episodios;
	}
	
	
	
	
	
}
