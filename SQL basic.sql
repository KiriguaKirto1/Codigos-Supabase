CREATE TABLE copa_2026 (
    id_copa BIGINT GENERATED ALWAYS AS IDENTITY UNIQUE NOT NULL PRIMARY KEY,
    pais TEXT NOT NULL,
    pontuacao INT NOT NULL,
    artilheiro VARCHAR(20)
);

-- Chave primária: Primary Key
-- É o campo que identifica cada linha de uma tabela.

-- Chave estrangeira: Foreign key
-- É o campo usado para ligar uma tabela com outra.

-- VARCHAR:
-- É um tipo de dado usado para armazenar textos com tamanho variável.
-- O número entre parênteses define o limite máximo de caracteres.
