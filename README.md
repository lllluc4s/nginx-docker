# Nginx | Docker

Este projeto demonstra como criar e executar um contêiner Nginx usando o Docker.

## Configuração

Certifique-se de ter o Docker instalado em sua máquina antes de prosseguir.

## Construção da imagem Docker

Para construir a imagem Docker do Nginx, execute o seguinte comando no diretório raiz do projeto:

- docker build -t nginx-docker .

Esse comando irá criar uma imagem Docker com base no arquivo Dockerfile presente no diretório atual e atribuir o nome "nginx-docker" à imagem.

## Execução do contêiner

Após a construção da imagem, você pode executar um contêiner Nginx usando o seguinte comando:

- docker run -d -p 88:88 --name nginx-container nginx-docker

Isso iniciará um novo contêiner com o nome "nginx-container" e mapeará a porta 88 do host para a porta 88 do contêiner. O contêiner será executado em segundo plano (`-d`), permitindo que você continue usando o terminal.

## Acesso ao Nginx

Após a execução do contêiner, você poderá acessar o Nginx digitando o seguinte endereço em seu navegador:

http://localhost:88

Isso abrirá a página padrão do Nginx no navegador.

### Encerrando o contêiner

Para parar e remover o contêiner em execução, execute os seguintes comandos:

- docker stop nginx-container

- docker rm nginx-container

Isso irá parar e remover o contêiner com o nome "nginx-container".
