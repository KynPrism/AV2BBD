USE avaliacao_22b;

-- 1)
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) values
	("As Crônicas de Nárnia", "C.S Lewis", 1950, TRUE, "Fantasia", "978-0064471190", "Editora HarperCollins", 768, "Inglês");

-- 2)
UPDATE Livros
SET disponivel= 'FALSE'
WHERE ano_publicacao < 2000; 

-- 3)
UPDATE Livros
SET editora='Plume Books'
WHERE titulo='1984';

-- 4)
DELETE FROM Livros WHERE idioma='Francês' and ano_publicacao < 1970;

-- 5)
SELECT * FROM Livros WHERE quantidade_paginas > 500;

-- 6)
SELECT * FROM Livros GROUP BY categoria;
SELECT COUNT(categoria) FROM Livros;

-- 7)
SELECT * FROM Livros LIMIT 5;

-- 8)
SELECT AVG(ano_publicacao) FROM Livros;

-- 9)
SELECT ano_publicacao FROM Livros ORDER BY DESC;

-- 10)
SELECT * FROM Livros WHERE titulo like 'A%';