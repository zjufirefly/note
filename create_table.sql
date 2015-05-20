######################
# create meta database
######################
drop database if exists meta;
create database if not exists meta;
use meta;


######################
# create servers table
######################
drop table if exists servers;
create table servers
(
    server_id       int         not null auto_increment primary key ,
    ip_addr         char(16)    not null ,
    port            int         not null ,
    unique (ip_addr, port)
) default charset=utf8;


##################
# create dbs table
##################
# status:
#   0,  db_inti
#   1,  db_creating
#   2,  db_create_failed
#   3,  db_created
##################
drop table if exists dbs;
create table dbs
(
    database_id     int         not null primary key auto_increment ,
    name            char(50)    not null unique ,
    status          int         not null default '0'
) default charset=utf8;


#######################
# create tbs table
#######################
# status:
#   0,  tb_inti
#   1,  tb_creating
#   2,  tb_create_failed
#   3,  tb_created
# devide_type:
#   0,  not devide
#   1,  devide by hash
#   2,  devide by range
#######################
drop table if exists tbs;
create table tbs
(
    table_id        int         not null primary key auto_increment ,
    database_id     int         not null ,
    name            char(50)    not null ,
    status          int         not null default '0' ,
    devide_type     int         not null default '0' ,
    devide_arg      varchar(16384) ,
    unique (database_id, name)
) default charset=utf8;


###########################
# create asso_serv_db table
###########################
drop table if exists asso_serv_db;
create table asso_serv_db
(
    asso_id         int         not null primary key auto_increment ,
    server_id       int         not null ,
    database_id     int         not null ,
    unique (server_id, database_id)
) default charset=utf8;


###########################
# create asso_serv_tb table
###########################
drop table if exists asso_serv_tb;
create table asso_serv_tb
(
    asso_id         int         not null primary key auto_increment ,
    server_id       int         not null ,
    table_id        int         not null ,
    unique (server_id, table_id)
);


# construct servers data
insert into servers(ip_addr, port) values('127.0.0.1', 3308);
insert into servers(ip_addr, port) values("127.0.0.1", 3309);
insert into servers(ip_addr, port) values("127.0.0.1", 3310);

# construct dbs data
insert into dbs(name) values("db1");
insert into dbs(name) values("db2");

# construct tbs data
select @db_id1:=database_id from dbs where name="db1";
insert into tbs(database_id, name, devide_type) values(@db_id1, "tb1", 1);
insert into tbs(database_id, name, devide_type) values(@db_id1, "tb2", 1);
select @db_id2:=database_id from dbs where name="db2";
insert into tbs(database_id, name, devide_type) values(@db_id2, "tb3", 1);

# construct asso_serv_db data
select @serv_id1:=server_id from servers where ip_addr="127.0.0.1" and port=3308;
select @serv_id2:=server_id from servers where ip_addr="127.0.0.1" and port=3309;
select @serv_id3:=server_id from servers where ip_addr="127.0.0.1" and port=3310;
insert into asso_serv_db(server_id, database_id) values(@serv_id1, @db_id1);
insert into asso_serv_db(server_id, database_id) values(@serv_id2, @db_id1);
insert into asso_serv_db(server_id, database_id) values(@serv_id3, @db_id1);
insert into asso_serv_db(server_id, database_id) values(@serv_id3, @db_id2);

# construct asso_serv_tb data
select @tb_id1:=table_id from tbs where database_id=@db_id1 and name="tb1";
select @tb_id2:=table_id from tbs where database_id=@db_id1 and name="tb2";
select @tb_id3:=table_id from tbs where database_id=@db_id2 and name="tb3";
insert into asso_serv_tb(server_id, table_id) values(@serv_id1, @tb_id1);
insert into asso_serv_tb(server_id, table_id) values(@serv_id2, @tb_id1);
insert into asso_serv_tb(server_id, table_id) values(@serv_id3, @tb_id1);
insert into asso_serv_tb(server_id, table_id) values(@serv_id1, @tb_id2);
insert into asso_serv_tb(server_id, table_id) values(@serv_id2, @tb_id2);
insert into asso_serv_tb(server_id, table_id) values(@serv_id3, @tb_id3);
