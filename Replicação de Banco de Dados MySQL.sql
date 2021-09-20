sudo apt install mysql-server
systemctl status mysql
sudo vi /etc/mysql/mysql.conf.d/mysqld.cnf

bind-addres	= 0.0.0.0


sudo systemctl restart mysql
sudo systemctl status mysql

sudo mysql -u root -p
SHOW MASTER STATUS \G

		


--NA MAQUIN-2 AGORA  10.0.0167
sudo apt install mysql-server
systemctl status mysql
sudo vi /etc/mysql/mysql.conf.d/mysqld.cnf

bind-addres	= 0.0.0.0






sudo systemctl restart mysql
sudo systemctl status mysql

sudo mysql -u root -p

--MAQUINA 1
CREATE USER 'felipe4'@'10.0.0.167' IDENTIFIED BY '1';
GRANT REPLICATION SLAVE ON *.* TO 'felipe4'@'10.0.0.167';
SHOW MASTER STATUS \G;

--MAQUINA 2
CHANGE REPLICATION SOURCE TO SOURCE_HOST='10.0.0.58', SOURCE_LOG_FILE='mysql-bin.000001', SOURCE_LOG_POS=3291, SOURCE_SSL=1;
START REPLICA USER='felipe4' PASSWORD='1';
SHOW REPLICA STATUS \G;


--MAQUINA 1
CREATE DATABASE felipe5;

--MAQUINA 2
SHOW DATABASES;
CREATE USER 'felipe4'@'10.0.0.58' IDENTIFIED BY '1';
GRANT REPLICATION SLAVE ON *.* TO 'felipe4'@'10.0.0.58';
SHOW MASTER STATUS G

--MAQUINA 1
CHANGE REPLICATION SOURCE TO SOURCE_HOST='10.0.0.167', SOURCE_LOG_FILE='mysql-bin.000001', SOURCE_LOG_POS=3291, SOURCE_SSL=1;
START REPLICA USER='felipe4' PASSWORD='1';
SHOW REPLICA STATUS \G;

--MAQUINA 2
CREAT DATABASE felipe3; 
SHOW DATABASES;


Link --https://www.youtube.com/watch?v=_JT5PNkkAGE&t=118s
