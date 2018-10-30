# Crawler Quotes

## Descrição

Um simples buscador de frases do site [Quotes to Scrape](http://quotes.toscrape.com/)

## Instalação

Instale o [Ruby on Rails](https://gorails.com/setup)

Instale o [Mongodb](https://docs.mongodb.com/manual/administration/install-community/)

Baixe o projeto através do comando no terminal

```
git clone https://github.com/Heirian/crawler-quotes.git
```

No terminal na pasta do projeto

```
bundle install
```

Inicie o mongodb caso não tenha iniciado anteriormente

```
sudo service mongod start
```

No terminal inicie o servidor

```
rails s -p 3000
```

## Utilização

Para testar a aplicação use o postman -> https://www.getpostman.com/

Primeiro crie o usuário através de um post para 'localhost:3000/users'

```
{
	"user": {
		"email": "user@example.com",
		"password": "mysecrect"
	}
}
```
<p align="center">
  <img src="https://user-images.githubusercontent.com/26394609/47742977-9df54900-dc5c-11e8-8959-90096ab3fe37.png" alt="Criando um usuário"/>
</p>

Depois disso consiga seu token através de um post para 'localhost:3000/user_token'

```
{
	"auth": {
		"email": "user@example.com",
		"password": "mysecrect"
	}
}
```

<p align="center">
  <img src="https://user-images.githubusercontent.com/26394609/47742978-9df54900-dc5c-11e8-86c6-1cf5e40cf6f5.png" alt="Conseguindo um token"/>
</p>

Assim é só adiciona-lo ao header

<p align="center">
  <img src="https://user-images.githubusercontent.com/26394609/47742973-9cc41c00-dc5c-11e8-8478-cde8763016ed.png" alt="Adicionando o token"/>
</p>

Com o token em mãos agora podemos pesquisar por 'quotes' através de tags
Teste com a tag books através do link 'localhost:3000/quotes/books'

<p align="center">
  <img src="https://user-images.githubusercontent.com/26394609/47742975-9d5cb280-dc5c-11e8-837f-606d19acb519.png" alt="Buscando pela tag books"/>
</p>
