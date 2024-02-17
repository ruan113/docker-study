docker image build -t ex-simple-build .
docker image ls

# Original version from class
# docker container run -p 80:80 ex-simple-build # Serviço disponível em http://localhost
# CTRL-C para sair

# my version 
docker container stop ex-simple-build
docker container rm ex-simple-build
docker container run -d --name ex-simple-build -p 80:80 ex-simple-build
read -p "Serviço disponível em http://localhost, precione qualquer botão para finalizar a execução"
docker container stop ex-simple-build