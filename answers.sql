-- answers.sql
-- =====================================
-- Tarefa: Junções e Relacionamentos
-- Autor: Engenheiro Vortex
-- =====================================

-- Pergunta 1 🧑‍💼
-- Obter nome, sobrenome, e-mail e código do escritório de todos os funcionários
-- INNER JOIN entre employees e offices pela coluna officeCode
SELECT e.firstName,
       e.lastName,
       e.email,
       o.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;

-- Pergunta 2 🛍️
-- Obter productName, productVendor e productLine da tabela products
-- LEFT JOIN entre products e productlines pela coluna productLine
SELECT p.productName,
       p.productVendor,
       pl.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;

-- Pergunta 3 📦
-- Recuperar orderDate, shippedDate, status e customerNumber dos primeiros 10 pedidos
-- RIGHT JOIN entre customers e orders pela coluna customerNumber
SELECT o.orderDate,
       o.shippedDate,
       o.status,
       o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
