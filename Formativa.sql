create database vendas;

create table vendas_bd(
id_venda int auto_increment primary key,
produto varchar (100),
quantidade int,
preco decimal (10,2)
);

insert into vendas_bd(produto, quantidade, preco)
values ("Porsche", 2, 1500000.00),
("Ferrari", 4, 2500000.00),
("McLaren", 5, 1800000.00),
("Bugatti", 1, 3000000.00),
("Cadillac Escalade", 3, 2000000.00),
("Audi", 6, 500000.00),
("Aston Martin", 2, 2100000.00),
("Jaguar", 7, 2500000.00),
("Rolls Royce", 3, 2000000.00),
("Lamborghini", 1, 3000000.00);

select *from vendas_bd;

select count(*) AS Total_vendas from vendas_bd;

select sum(quantidade) AS Total_produtos from vendas_bd;

select avg (preco) AS Media_de_preco from vendas_bd;

select min(preco) AS Menor_preco from vendas_bd;

select max(preco) AS Maior_preco from vendas_bd;

select produto, count(*) AS Total_de_vendas from vendas_bd
group by produto;

select *from vendas_bd;

select produto, sum(quantidade) AS Total_produtos from vendas_bd
group by produto
having Total_produtos <17;

select *from vendas_bd;

select produto, quantidade,preco from vendas_bd order by preco asc;

select produto, quantidade, preco from vendas_bd order by preco desc limit 5;

select produto, preco, (select max(preco) from vendas_bd) from vendas_bd;