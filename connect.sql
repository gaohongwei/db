use mysql
select user,host,password from user;
show grants for 'root'@'%';

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY PASSWORD 'password' WITH GRANT OPTION ;
flush previleges; 

select @pwd :=password('root');
select @pwd;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY PASSWORD @pwd WITH GRANT OPTION ;


GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION ;
SET PASSWORD FOR 'root'@'%' =  PASSWORD('root');
flush previleges; 


Config
/etc/mysql/mysql.conf.d/mysqld.cnf
bind-adress= 172.16.16.169

sudo service mysql restart
