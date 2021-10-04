#User Admin, todos os privilegios:
CREATE USER "administrador" IDENTIFIED BY "admin123";
GRANT ALL PRIVILEGES ON *.*TO "administrador";
FLUSH PRIVILEGES;

#Usuário Padrão, manutenção dos dados:
CREATE USER "padrao" IDENTIFIED BY "padrao123";
GRANT INSERT, UPDATE, DELETE, EXECUTE, SELECT on mydb.* TO "padrao";
FLUSH PRIVILEGES;

#Usuário restrito do Sistema:
CREATE USER "restrito" IDENTIFIED BY "restrito123";
GRANT INSERT, SELECT ON mydb.* TO "restrito";
FLUSH PRIVILEGES;

#Usuário de consulta ao banco:
CREATE USER "consulta" IDENTIFIED BY "consulta123";
GRANT SELECT ON mydb.* TO "consulta";
FLUSH PRIVILEGES;

use mydb;
SELECT USER FROM mysql.user;

