# IsacFlix-BackEnd
# Introdução

Bem-vindo à documentação do isacFlix, sua plataforma de streaming completa para séries, animes e filmes. Este documento foi criado para oferecer uma compreensão abrangente do isacFlix, desde suas funcionalidades principais até as tecnologias utilizadas no desenvolvimento. Se você é novo no projeto ou está buscando informações sobre configuração e uso, você está no lugar certo.

# Sobre o Projeto

O isacFlix é um projeto dedicado a fornecer uma experiência de entretenimento sob demanda, oferecendo aos usuários acesso a uma vasta biblioteca de conteúdos audiovisuais. Com uma interface intuitiva e amigável, os usuários podem explorar uma variedade de séries, animes e filmes em um único lugar.

Para construir o isacFlix, utilizamos uma pilha de tecnologias modernas. No lado do back-end, Java Spring Boot é empregado para garantir um desenvolvimento robusto e escalável. No front-end, as tecnologias web padrão HTML, CSS e JavaScript são utilizadas para criar uma experiência de usuário atraente e responsiva.

O isacFlix conta com um sistema de autenticação seguro gerenciado por meio de uma tela de login, que faz uso do framework JWT (JSON Web Tokens). Isso garante a autenticação eficiente dos usuários, protegendo suas informações privadas durante o uso da plataforma.

A tela principal do isacFlix apresenta uma variedade de carrosséis dinâmicos, destacando os conteúdos mais populares e recentemente adicionados. Além disso, cada conteúdo possui uma tela de vídeo dedicada, fornecendo aos usuários um player de vídeo de alta qualidade juntamente com uma descrição abrangente do conteúdo.

## Instalação e Execução do Backend 

Antes de começar, verifique se o seu computador atende aos requisitos mínimos de sistema necessários para executar o backend do isacFlix.

# Requisitos de Sistema:

Java Development Kit (JDK) 11 ou superior instalado
Maven (opcional, se você não tiver o Maven, será usado o Maven Wrapper fornecido com o projeto)

## Passo 1: Clonar o Repositório

## Passo 2: Configurar o Banco de Dados

1-Certifique-se de ter um servidor MySQL instalado e em execução em sua máquina.

2-Importe esse  banco de dados chamado "isacflix" no MySQL https://github.com/Isaczx/IsacFlix-BackEnd/blob/1da74b648dde978e13f0d443c7917fa52ad1bb54/isacFlix.sql

Nele vai estar as tabelas de usuario e videos necessario para o projeto funcionar.

## Passo 3: Importar corretamente os projetos FrontEnd e BackEnd do IsacFlix em seu computador.

Elementos do projeto.

# Cadastro de Usuário:

1- Para cadastrar um novo usuário é necessario preencher os formularios correspondentes na pagina pages/CriarConta.html ou inserir diretamente no banco de dados.

2- É necessário inserir o nome completo, email válido, CPF válido e senha juntamente com sua confirmação.

3- Para manter a segurança e privacidade do usuario. Foi implantando uma função com o framework JWT que ao enviar a senha no input, a mesma é criptografada e fica irreconhecivel no banco de dados.


![cadastro de usuario](https://github.com/Isaczx/IsacFlix-BackEnd/assets/118670709/18157ceb-b08d-46a9-ab47-674c8e04d380)

# Login de Usuário:

1- Para realizar login e necessario inserir o email e a senha do usuario corretamente e clicar em entrar na tela index.html.

2- O input é enviado atraves do medoto post e recebido pelo servidor, o mesmo vai procurar as informações, a senha é criptografada e verificada se bate com a do email correspondente.

3-Com o login sucedido, o usuario é redirecionado para a tela home, onde contem o conteudo principal. caso contrario é mostrado uma mensagem de erro.

![Tela inicial](https://github.com/Isaczx/IsacFlix-BackEnd/assets/118670709/3b266609-7772-4930-9eec-188e094cf294)
