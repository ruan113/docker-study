-- Criei esse script separado do init.sql pois estava acontecendo algum bug que ao deixar a criação do database junto com a criação da tabela, 
-- estava dando um erro, a tabela não estava sendo criada, e entender esse bug não faz parte do estudo

\c email_sender -- Conecta ao database email_sender

-- Cria tabela
create table emails (
  id serial not null,
  data timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  assunto varchar(100) not null,
  mensagem varchar(250) not null
);