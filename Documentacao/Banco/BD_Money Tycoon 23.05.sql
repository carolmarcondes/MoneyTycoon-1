drop database moneyTycoon;/*use este comando ara apagar o banco do seu servidor, apÃ³s utiliza-lo
apague ele, porque ele Ã© do mal.*/

create database moneyTycoon;
use  moneyTycoon;
show databases;
show tables;

create table ESC_escola(
    ESC_ID int not null auto_increment primary key,
    ESC_nome varchar(45) not null unique,
    ESC_endereco varchar(80) not null,
    ESC_numend varchar(6),
    ESC_bairro varchar (15) not null,
    ESC_cidade varchar(45) not null,
    ESC_estado varchar(2) not null,
    ESC_cnpj varchar(20)not null unique,
    ESC_ie varchar(15) unique,
    ESC_tel varchar(10) not null unique,
    ESC_email varchar(45) not null unique,
    ESC_cep varchar(8),
    ESC_foto varchar(200) unique,
    ESC_status boolean not null default false
);

create table CNT_contrato(
    CNT_ID int unique not null auto_increment primary key,
    CNT_inicio date not null,
    CNT_fim date not null,
    CNT_status boolean not null default false,
    CNT_parcela int not null check (CNT_parcela >= 0),
    CNT_valor float not null check (CNT_valor >= 0),
    ESC_ID int not null, foreign key (ESC_ID) references ESC_escola(ESC_ID)
);

create table PGC_pgcontrato(
    PGC_ID int unique not null auto_increment primary key,
    PGC_valor float not null check (PGC_valor >= 0),
    PGC_vencimento date not null,
    PGC_forma varchar (20) ,
    PGC_dtpagamento varchar(45),
    PGC_juros varchar(45),
    PGC_parcela int not null check(PGC_parcela >= 0),
    CNT_ID int not null, foreign key (CNT_ID) references CNT_contrato(CNT_ID)
);

create table PER_permissoeseuser(
    PER_ID int not null unique auto_increment primary key,
    PER_nome varchar(45) not null unique,
    PER_permissoes varchar(45) not null
);

create table USR_tipousuario(
    USR_ID int not null unique auto_increment primary key,
    USR_descricao varchar(15) not null unique,
    USR_user varchar(20) not null unique,
    USR_pwd varchar(10) not null,
    USR_status boolean not null default false,
    PER_ID int not null, foreign key (PER_ID) references PER_permissoeseuser(PER_ID)
);

create table RSP_responsavel(
    RSP_ID int not null auto_increment primary key unique,
    RSP_nome varchar(45) not null,
    RSP_cargo Varchar(15) not null,
    RSP_tel varchar(16) not null,
    RSP_email varchar(50),
    RSP_horario varchar(20),
    RSP_matricula varchar(20),
    RSP_foto varchar(200) unique,
    ESC_ID int not null, foreign key (ESC_ID) references ESC_escola(ESC_ID),
    USR_ID int not null, foreign key (USR_ID) references USR_tipousuario(USR_ID)
);

create table ADM_admprof(
    ADM_ID int primary key not null unique auto_increment,
    ADM_nome varchar(45) not null,
    ADM_funcao varchar(25) not null,
    ADM_matricula varchar(20),
    ADM_email varchar(50) unique,
    ADM_foto varchar(200) unique,
    ESC_ID int not null, foreign key (ESC_ID) references ESC_escola(ESC_ID),
    USR_ID int not null, foreign key (USR_ID) references USR_tipousuario(USR_ID)
);

create table ANO_anoescolar(
    ANO_ID int primary key unique not null auto_increment,
    ANO_ano int not null check (ANO_ano >= 0)   
);

create table MAT_materia(
    MAT_ID int primary key not null unique auto_increment,
    MAT_nome varchar(15) not null unique,
    ANO_ID int not null, foreign key (ANO_ID) references ANO_anoescolar(ANO_ID)
);

create table SAL_sala(
    SAL_ID int primary key unique not null auto_increment,
    SAL_nome varchar(5) not null,
    MAT_ID int not null, foreign key (MAT_ID) references MAT_materia(MAT_ID),
    ADM_ID int not null, foreign key (ADM_ID) references ADM_admprof(ADM_ID),
    unique SAL_composta (SAL_nome, MAT_ID, ADM_ID)
    
);

create table ALN_aluno(
    ALN_ID int primary key not null unique auto_increment,
    ALN_nome varchar(45) not null,
    ALN_sexo varchar(1) not null check (ALN_sexo = "M" or ALN_sexo = "F"),
    ALN_cartao varchar(12) not null unique,
    ALN_nasc date not null,
    ALN_creditos float not null check (ALN_creditos >= 0),
    ALN_matricula varchar(20),
    ALN_foto varchar(200) unique,
    USR_ID int not null, foreign key (USR_ID) references USR_tipousuario(USR_ID),
    SAL_ID int not null, foreign key (SAL_ID) references SAL_sala(SAL_ID)
);

create table ATV_atividade(
    ATV_ID int unique not null auto_increment primary key,
    ATV_descricao varchar(90) not null,
    ATV_valormax int not null check (ATV_valormax <= 100 and ATV_valormax > ATV_valormin),
    ATV_valormin int not null check (ATV_valormin >=0 and ATV_valormin < ATV_valormax)
);

create table PGM_pagamento(
    PGM_ID int primary key not null unique auto_increment,
    PGM_descricao varchar(45) not null,
    PGM_juros float4 check (PGM_juros >= 0),
    PGM_prazo varchar(10)
);

create table MVD_movvenda(
    MVD_ID int primary key unique not null auto_increment,
    MVD_datatime datetime not null default current_timestamp, 
    ALN_ID int not null, foreign key (ALN_ID) references ALN_aluno(ALN_ID),
    PGM_ID int not null, foreign key (PGM_ID) references PGM_pagamento(PGM_ID)

);

create table MBC_movbancaria(
    MBC_ID int primary key not null unique auto_increment,
    MBC_entrada float check (MBC_entrada >= 0),
    MBC_saida float check (MBC_saida >=0),
    MBC_obs varchar (144),
    MBC_saldo float not null,
    MBC_data datetime not null default current_timestamp,
    ALN_ID int not null, foreign key (ALN_ID) references ALN_aluno(ALN_ID),
    ADM_ID int, foreign key (ADM_ID) references ADM_admprof(ADM_ID),
    ATV_ID int not null, foreign key (ATV_ID) references ATV_atividade(ATV_ID),
    MVD_ID int, foreign key (MVD_ID) references MVD_movvenda(MVD_ID)
);

create table STR_setor(
    STR_ID int primary key unique not null auto_increment,
    STR_nome varchar(25) not null
    
);

create table SST_subsetor(
    SST_ID int primary key unique not null auto_increment,
    SST_nome varchar(25),/*alterar nome de SST_descricao para SST_nome*/
    STR_ID int not null, foreign key (STR_ID) references STR_setor(STR_ID)

);

create table PDT_produto (
    PDT_ID int primary key not null unique auto_increment,
    PDT_descricao varchar(2000),
    PDT_unidade varchar(2) not null,
    PDT_marca varchar(15),
    PDT_preco float not null check (PDT_preco >= 0),
    PDT_foto varchar(200) unique,
    PDT_nome varchar(30) not null,
    SST_ID int not null, foreign key (SST_ID) references SST_subsetor(SST_ID)
);

create table EST_estoque(
    EST_ID int primary key unique not null auto_increment,
    EST_qnt int not null check(EST_qnt >= 0),
    EST_entrada int not null check(EST_entrada >= 0),
    EST_saida int check(EST_saida >= 0),
    ESC_ID int not null, foreign key (ESC_ID) references ESC_escola(ESC_ID),
    PDT_ID int not null, foreign key (PDT_ID) references PDT_produto(PDT_ID)
);

create table IVD_itemvenda(
    IVD_ID int primary key unique auto_increment not null,
    PDT_ID int not null, foreign key (PDT_ID) references PDT_produto(PDT_ID),
    MVD_ID int not null, foreign key (MVD_ID) references MVD_movvenda(MVD_ID),
    EST_ID int not null, foreign key (EST_ID) references EST_estoque (EST_ID),
    IVD_preco float not null check(IVD_preco >= 0)
);

create table INV_inventario(
    INV_ID int primary key unique not null auto_increment,
    INV_prodfoto varchar(200) unique,
    INV_entrada int not null check(INV_entrada >= 0),
    INV_saida int not null check(INV_saida >= 0),
    INV_qnt int not null check(INV_qnt >= 0),
    ALN_ID int not null, foreign key (ALN_ID) references ALN_aluno(ALN_ID),
    PDT_ID int not null, foreign key (PDT_ID) references PDT_produto(PDT_ID)
);

create table LEL_leilao(
    LEL_ID int primary key unique not null auto_increment,
    LEL_inicio datetime not null default current_timestamp,
    LEL_fim datetime not null,
    LEL_vlinicial float not null check(LEL_vlinicial >= 0),
    LEL_status varchar(10),
    LEL_qnt int not null,
    ALN_ID int not null, foreign key (ALN_ID) references ALN_aluno(ALN_ID),
    INV_ID int not null, foreign key (INV_ID) references INV_inventario(INV_ID)
);

create table LNC_lance(
    LNC_ID int primary key unique not null auto_increment,
    LNC_valor float not null check(LNC_valor >= 0),
    LNC_data datetime not null default current_timestamp,
    LNC_status varchar(10),
    ALN_ID int not null, foreign key (ALN_ID) references ALN_aluno(ALN_ID),
    LEL_ID int not null, foreign key (LEL_ID) references LEL_leilao(LEL_ID),
    MBC_ID int, foreign key (MBC_ID) references MBC_movbancaria(MBC_ID)
);

create table MIV_movinventario(
    MIV_ID int primary key not null unique auto_increment,
    MVD_ID int, foreign key (MVD_ID) references MVD_movvenda(MVD_ID),
    INV_ID int not null, foreign key (INV_ID) references INV_inventario (INV_ID),
    LNC_ID int, foreign key (LNC_ID) references LNC_lance (LNC_ID)
);

/*TRIGGERS*/
/*você tem que executar as triggers também e a nesna coisa que criar uma tabela. ctrl + enter nelas. deleta esse comentario*/

delimiter $$
create trigger antes_de_contrado before insert on CNT_contrato
for each row begin
set @CNT_parcela = new.CNT_parcela;
set @CNT_valor = new.CNT_valor;
    if(@CNT_parcela < 0)then
            set new.CNT_parcela = null;
        end if;
    if(@CNT_valor < 0)then
            set new.CNT_parcela = null;
        end if;
end$$
delimiter ;

delimiter $$
create trigger antes_de_pagamento before insert on PGC_pgcontrato
for each row begin
set @PGC_valor = new.PGC_valor;
set @PGC_parcela = new.PGC_parcela;
    if(@PGC_valor <0)then
            set new.PGC_valor = null;
        end if;
    if(@PGC_parcela <0)then
            set new.PGC_parcela = null;
        end if;
end$$
delimiter ;

delimiter $$
create trigger antes_de_anoescolar before insert on ANO_anoescolar
for each row begin
set @ANO_ano = new.ANO_ano;
    if(@ANO_ano < 0)then
            set new.ANO_ano = null;
         end if;
end$$
delimiter ;

delimiter $$
create trigger antes_de_aluno before insert on ALN_aluno
for each row begin
set @ALN_creditos = new.ALN_creditos;
    if(@ALN_creditos < 0)then
            set new.ALN_aluno = null;
        end if;
end$$
delimiter ;

delimiter $$
create trigger antes_do_atividade before insert  on ATV_atividade
for each row begin
set @ATV_valormax = new.ATV_valormax;
set @ATV_valormin = new.ATV_valormin;
    if ((@ATV_valormax > 100) or (@ATV_valormax < @ATV_valormin)) then
            set new.ATV_valormax = null;
        end if;
    if ((@ATV_valormin < 0) or (@ATV_valormin > @ATV_valormax)) then
             set new.ATV_valormin = null;
        end if;
end$$
delimiter ;

delimiter $$
create trigger antes_de_movbancaria before insert on MBC_movbancaria
for each row begin
set @MBC_entrada = new.MBC_entrada;
set @MBC_saida = new.MBC_saida;
set @MBC_saldo = new.MBC_saldo;
    if(@MBC_entrada < 0)then
            set new.MBC_entrada = 0;
        end if;
    if(@MBC_saida < 0)then
            set new.MBC_saida = 0;
        end if;
    if(@MBC_saldo < 0)then
            set new.MBC_saldo = null;
        end if;
end$$
delimiter ;

delimiter $$
create trigger antes_de_produto before insert on PDT_produto
for each row begin
set @PDT_preco = new.PDT_preco;
    if(@PDT_preco < 0) then
            set new.PDT_preco = null;
        end if;
end$$
delimiter ;

delimiter $$
create trigger antes_de_estoque before insert on EST_estoque
for each row begin
set @EST_qnt = new.EST_qnt;
set @EST_entrada = new.EST_entrada;
set @EST_saida = new.EST_saida;
    if(@EST_qnt < 0)then
            set new.EST_qnt = null;
        end if;
    if(@EST_entrada < 0)then
            set new.EST_entrada = 0;
        end if;
    if(@EST_saida < 0)then
            set new.EST_saida = 0;
        end if;
end$$
delimiter ;

delimiter $$
create trigger antes_de_itemvenda before insert on IVD_itemvenda
for each row begin
set @IVD_preco = new.IVD_preco;
    if(@IVD_preco < 0)then
            set new.IVD_preco = null;
        end if;
end$$
delimiter ;

delimiter $$
create trigger antes_de_inventario before insert on INV_inventario
for each row begin
set @INV_entrada = new.INV_entrada;
set @INV_saida = new.INV_saida;
set @INV_qnt = new.INV_qnt;
    if(@INV_entrada < 0)then
            set new.INV_entrada = 0;
        end if;
    if(@INV_saida < 0)then
            set new.INV_saida = 0;
        end if;
    if(@INV_qnt < 0)then
            set new.INV_qnt = null;
        end if;
end$$
delimiter ;

delimiter $$
create trigger antes_de_leilao before insert on LEL_leilao
for each row begin
set @LEL_vlinicial = new.LEL_vlinicial;
    if(@LEL_vlinicial < 0)then
            set new.LEL_vlinicial = null;
        end if;
end$$
delimiter ;

delimiter $$
create trigger antes_de_lance before insert on LNC_lance
for each row begin
set @LNC_valor = new.LNC_valor;
    if(@LNC_valor < 0)then
            set new.LNC_valor = null;
        end if;
end$$
delimiter ;