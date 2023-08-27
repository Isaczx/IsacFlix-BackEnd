package com.IsacFlix.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.IsacFlix.main.entities.LoginDTO;
import com.IsacFlix.main.entities.RegistrarDTO;
import com.IsacFlix.main.entities.loginResponseDTO;
import com.IsacFlix.main.entities.usuario;
import com.IsacFlix.main.infra.security.TokenService;
import com.IsacFlix.main.repository.usuarioRepository;

/*@RestController é usada para marcar uma classe como controlador API REST
Controladores REST são responsaveis por lidar com solitações HTTP e retornar respostas formatadas, geralmente em formato JSON,
para construir uma API baseada em serviço WEB*/
@RestController




/*
 * @RequestMapping é usada para mapear uma URL ou um padrão de URL para um
 * metodo especifico dentro de um controlador isso permite que voce defina qual
 * metodo de um controlador sera executado quando uma solitação HTTP é feita pra
 * um determinado endpoint
 */

@RequestMapping("auth")
@CrossOrigin("*")
public class autenticacaoController {

	/*
	 * @Autowired é usada para realizar a injeção de dependencias automaticamente em
	 * uma classe, em vez dessa classe criar esses objetos para si mesma. Pode ser
	 * usada em campos , metodos setters ou construtores para indicar ao Spring que
	 * ele deve fornecer a dependencia apropiada no momento em que um objeto é
	 * criado ou inicializado
	 */

	@Autowired
	//AuthenticationManager é responsável por coordenar a autenticação, lidando com diferentes mecanismos de autenticação
	private AuthenticationManager authenticationManager;

	@Autowired
	private usuarioRepository usuarioRepository;

	@Autowired
	private TokenService tokenService;
	
	
	@PostMapping("/login")
	public ResponseEntity<?> logar(@RequestBody @Validated LoginDTO data) {
		var usernamePassword = new UsernamePasswordAuthenticationToken(data.email(), data.senha());
		var auth = this.authenticationManager.authenticate(usernamePassword);

		var token = tokenService.generateToken((usuario) auth.getPrincipal());
		return ResponseEntity.ok(new loginResponseDTO(token));
	}

	@PostMapping("/registrar")
	public ResponseEntity<?> registrar(@RequestBody @Validated RegistrarDTO data) {
		if (this.usuarioRepository.findByName(data.name()) != null)
			return ResponseEntity.badRequest().build();

		String encryptedSenha = new BCryptPasswordEncoder().encode(data.senha());
		usuario newUser = new usuario(data.name(), data.email(), data.CPF(), encryptedSenha);

		this.usuarioRepository.save(newUser);

		return ResponseEntity.ok().build();

	}
}
