docker-compose down -v

# O comando acima foi adicionado dado um problema onde eu dependia da execução do arquivo init.sql no container db, 
# mas a existencia de um volume faz com que o arquivo em "/docker-entrypoint-initdb.d/init.sql" não seja executado. 
# Source: https://stackoverflow.com/questions/53249276/docker-compose-mysql-init-sql-is-not-executed

docker-compose up -d --scale worker=3
echo "Aguardando a carga do postgres"
sleep 5
docker-compose exec db psql -U postgres -f /scripts/check.sql
docker-compose logs -f -t worker app

