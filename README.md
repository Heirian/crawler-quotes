# Crawler Quotes

## Descrição

Um simples buscador de frases do site http://quotes.toscrape.com/

## Instalação

Instale o Ruby on Rails -> https://gorails.com/setup

Instale o Mongodb -> https://docs.mongodb.com/manual/administration/install-community/

Baixe o projeto através no terminal

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

-> user_create_r

Depois disso consiga seu token através de um post para 'localhost:3000/user_token'

```
{
	"auth": {
		"email": "user@example.com",
		"password": "mysecrect"
	}
}
```

-> user_token

Assim é só adiciona-lo ao header
-> adds_token

Com o token em mãos agora podemos pesquisar por 'quotes' através de tags
Teste com a tag books através do link 'localhost:3000/quotes/books'
-> books_test
