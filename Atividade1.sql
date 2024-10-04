create database Funcionario_bd;

create table funcionario(
codfunc int auto_increment primary key,
nomefunc varchar (50),
sexofunc varchar (20),
bairrofunc varchar (50),
salfunc decimal (10,2),
setorfunc varchar (20)
);

insert into funcionario(nomefunc, sexofunc, bairrofunc, salfunc, setorfunc)
values ("Larissa Menezes", "F","Jabaquara", 1200.00, "Marketing" ),
("Selma Nunes", "F","Grajaú", 3800.00, "Vendas" ),
("Leandro Henrique", "M","Socorro", 2950.00, "RH" ),
("Amélia Jeremias", "F","Socorro", 4200.00, "Marketing" ),
("Cláudio Jorge Silva", "M","Jabaquara", 1480.00, "Vendas" ),
("Luciano Souza", "M","Pedreira", 1000.00, "Vendas" ),
("Gabriela Santos Nunes", "F","Jurubatuba", 4150.00, "Produção" ),
("Rafaela Vieira JR", "F","Jabaquara", 700.00, "Marketing" ),
("Suzana Crispim", "F","Grajaú", 5600.00, "Produção" ),
("Sabrina Oliveira Castro", "F","Pedreira", 2900.00, "Marketing" ),
("Jarbas Silva Nunes", "M","Jurubatuba", 5300.00, "Produção" ),
("Ralf Borges", "M","Jabaquara", 1600.00, "Marketing" );

select sum(salfunc) AS Total_salarios from funcionario;

select count(*) AS Quantidade_marketing from funcionario where setorfunc = "Marketing";

select avg(salfunc) AS media_salario
       from funcionario
       group by setorfunc
       order by media_salario desc;

select count(*) AS quant_fun_socorro
       from funcionario
         where salfunc < 3000 
       and bairrofunc = "Socorro";
       
select setorfunc as Setor, count(*) as Quantidade_Funcionarios
from funcionario
group by setorfunc
having count(*) > 1;