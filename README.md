# QuickCheck Full Stack Application

Aplicação Full Stack do aplicativo QuickCheck para registro e marcação de consultas.

## Estrutura

1. Front End: React + Vite
2. Back End: Spring Boot (Java)
3. Banco de Dados: MySQL 
4. Deploy: Docker Compose

## Para obter os componentes

Faça o clone deste repositório:

	git clone https://github.com/renanleitev/quickcheck-docker.git

Depois, acesse a pasta com o código (ou usando o terminal):

    cd quickcheck-docker

De dentro da pasta `quichcheck-docker`, faça o clone dos repositórios Front e Back End:

Front End
	
	git clone https://github.com/renanleitev/quickcheck-front.git

Back End

	git clone https://github.com/i1iadeilton/quickcheck.git

## Para inserir os dados mockados

Dê permissão para executar o script abaixo:

	sudo chmod +x mock.sh

Execute o script para inserir os dados mockados:

	./mock.sh

Após isso, deverá receber uma mensagem no terminal informando que os dados mockados foram inseridos com sucesso.

	"Substituição concluída. O arquivo original foi salvo como QuickcheckApplication.java.bak."

Caso ocorra algum erro, verifique se o arquivo `mock.sh` possui permissão de execução (chmod +x) ou se você fez o `git clone` corretamente do repositório `quickcheck`.

## Para rodar em um servidor externo (AWS, Cloud, Oracle)

Dê permissão para executar o script abaixo (ele irá trocar a url localhost pelo ip do servidor):

	sudo chmod +x url.sh

Passe o ip do servidor para o script alterar a URL da API backend no arquivo axios.js:

	./url.sh <IP_SERVIDOR:8080>

Obs: É importante que a porta `8080` esteja aberta no seu servidor

Após isso, deverá receber uma mensagem no terminal informando que a substituição da URL foi feita com sucesso.

	"Substituição concluída. O arquivo original foi salvo como axios.js.bak."

Caso ocorra algum erro, verifique se o arquivo `url.sh` possui permissão de execução (chmod +x) ou se você fez o `git clone` corretamente do repositório `quickcheck-front`.

## Para rodar os containers

	docker compose up

Obs: Pode ser que demore alguns segundos ou até minutos para a aplicação iniciar, se não der certo após dois minutos, tente novamente.

Caso dê tudo certo, abra o seu navegador e acesse o site: `http://localhost:9090` ou `http://<IP_SERVIDOR>:9090`

## Para deletar os containers

	docker compose down

## Para deletar todos os containers

	docker container prune -f

## Equipe

1. Flávio Raposo
2. João Pedro Marinho
3. José Adeilton
4. Renan Leite Vieira
5. Rian Vinícius
6. Robério José
7. Renan Vilabela
