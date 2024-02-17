docker build -t ex-build-dev .
docker run -it -v $(pwd):/app -p 80:8000 ex-build-dev # Serviço disponível em http://localhost

# REMEMBER: 
# -it is short for --interactive + --tty. When you docker run with this command it takes you straight inside the container.

# -v $(pwd):/app
# This command copy all files from the current directory (expressed by the command $(pwd)) into /app directory inside the container 

# docker run using param -t, express that we will be informing a tag in the next param on shell