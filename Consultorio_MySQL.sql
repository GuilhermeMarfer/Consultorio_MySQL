create database Consultorio; /* criando o banco de dados  */
use Consultorio; /* acessando o banco de dados */

drop database consultorio;

create table Paciente(
	pk_id_paciente int auto_increment primary key,
    nome_paciente varchar(100) not null,
    data_nasc_paciente date,
    cpf_paciente char(11) not null,
    genero_paciente enum('f','m','o'),
    endereco_paciente varchar(100),
    email_paciente varchar(50),
    telefone_paciente char(13) not null
);


insert into Paciente (nome_paciente,data_nasc_paciente,cpf_paciente,genero_paciente,endereco_paciente,email_paciente,telefone_paciente) values
('Jessica Da Silva', '20050409', '12345678911', 'f', 'Rua jovial, 15', 'jessicadasilva@gmail.com', '551180809966'),
('Positivo Da Silva', '20050409', '12345678911', 'f', 'Rua jovial, 15', 'jessicadasilva@gmail.com', '551180809966'),
('Punha Silva', '20020510', '69345678969', 'o', 'Rua Pupu, 69', 'caverna@gmail.com', '556969009969'),
('Julio Lais Silva', '20020510', '69345678969', 'o', 'Rua Pupu, 69', 'caverna@gmail.com', '556969009969'),
('Zeca Pagodinho', '20020510', '69345678969', 'o', 'Rua Pupu, 69', 'caverna@gmail.com', '556969009969'),
('Jande de Pilares', '20020510', '69345678969', 'o', 'Rua Pupu, 69', 'caverna@gmail.com', '556969009969'),
('Bezerra Da Silva', '20020510', '69345678969', 'o', 'Rua Pupu, 69', 'caverna@gmail.com', '556969009969'),
('Milionario Rico', '20020510', '69345678969', 'o', 'Rua Pupu, 69', 'caverna@gmail.com', '556969009969'),
('José Rico', '20020510', '69345678969', 'o', 'Rua Pupu, 69', 'caverna@gmail.com', '556969009969');




describe Paciente; /* exibi estrutura da tabela*/
select * from Paciente; 

drop database consultorio;

create table Dentista(
	pk_id_dentista int auto_increment primary key,
    nome_dentista varchar(100) not null,
    cpf_dentista char(11) not null,
    telefone_dentista char(13) not null,
    CRO int(10)
);

insert into Dentista (nome_dentista,cpf_dentista,telefone_dentista,CRO) values
('Roberso Soares', '34245678967', '118909452423', '1234567890'),
('Reivane Martins', '56873078237', '110016752293', '0987654321');

select * from Consulta;

create table Consulta(
	pk_id_consulta int auto_increment primary key,
    local_consulta varchar(100) not null,
    horario_data_consulta datetime not null,
    descricao_consulta varchar(100)
);

drop table Consulta;

insert into Consulta (local_consulta, horario_data_consulta,descricao_consulta) values
('Avenida Caetano Alves, 9879', '2024-10-29 10:30:00', 'Aparelho Bocal'),
('Avenida Cangaiba, 7969', '2022-05-25 12:30:00', 'Dente Podre'),
('Avenida Cangaiba, 7969', '2022-05-25 13:20:00', 'Limpeza'),
('Avenida Cangaiba, 7969', '2022-05-25 13:50:00', 'Limpeza'),
('Avenida Caetano Alves, 9879', '2022-05-25 12:00:00', 'Aparelho Bocal'),
('Avenida Cangaiba, 7969', '2022-05-25 15:00:00', 'Limpeza'),
('Avenida Cangaiba, 7969', '2022-05-25 15:30:00', 'Limpeza'),
('Avenida Caetano Alves, 9879', '2022-05-25 16:00:00', 'Dente Podre'),
('Avenida Cangaiba, 7969', '2022-05-25 17:20:00', 'Limpeza'),
('Avenida Cangaiba, 7969', '2022-05-25 17:30:00', 'Dente Podre');
