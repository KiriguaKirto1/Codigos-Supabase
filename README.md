# Códigos SQL para Supabase

Este repositório reúne atividades de banco de dados relacional desenvolvidas em SQL e adaptadas para uso no **Supabase**, que utiliza **PostgreSQL** como banco de dados.

O objetivo é demonstrar a criação de tabelas, chaves primárias, chaves estrangeiras, relacionamentos, validações, inserção de dados e consultas com `JOIN`.

## Objetivo do projeto

O projeto foi criado para praticar conceitos fundamentais de banco de dados, como:

- criação de tabelas com `CREATE TABLE`;
- uso de chaves primárias e estrangeiras;
- relacionamento entre tabelas;
- validações com `CHECK`;
- restrições com `UNIQUE` e `NOT NULL`;
- inserção de dados com `INSERT INTO`;
- consultas simples e consultas com `INNER JOIN`;
- formatação de datas e valores monetários;
- uso de views, funções, triggers e políticas de segurança em modelos mais avançados.

## Tecnologias utilizadas

- SQL
- PostgreSQL
- Supabase
- GitHub

## Estrutura dos arquivos

```txt
Codigos-Supabase-main/
├── DeleteAll.sql
├── SQL basic.sql
├── TabelaEscolaSimples.sql
├── TabelaEscolaCOMP.sql
├── TabelaIA.sql
├── controle_estoque_produtos.sql
├── sistema_clinica_medica.sql
├── sistema_locacao_veiculos.sql
├── sistema_pedidos_clientes_produtos.sql
├── LICENSE
└── README.md
```

## Descrição dos arquivos

### `SQL basic.sql`

Arquivo introdutório com uma tabela simples chamada `copa_2026`.

Esse script apresenta conceitos básicos de SQL, como:

- criação de tabela;
- chave primária;
- campos obrigatórios;
- uso de `TEXT`, `INT` e `VARCHAR`;
- comentários explicativos sobre chave primária, chave estrangeira e `VARCHAR`.

É o arquivo mais simples do projeto e serve como introdução aos comandos básicos de banco de dados.

---

### `sistema_pedidos_clientes_produtos.sql`

Modelo de banco para um sistema de pedidos.

O script organiza informações sobre clientes, produtos, pedidos e itens de pedido.

Principais tabelas:

```txt
clientes
produtos
pedidos
itens_pedido
```

Principais relacionamentos:

- um cliente pode fazer vários pedidos;
- um pedido pertence a um cliente;
- um pedido pode ter vários itens;
- cada item de pedido está ligado a um produto.

O arquivo também inclui consultas para exibir CPF, telefone, datas e valores formatados.

---

### `sistema_locacao_veiculos.sql`

Modelo de banco para um sistema de locação de veículos.

O script armazena dados de clientes, veículos e locações.

Principais tabelas:

```txt
clientes
veiculos
locacoes
```

Principais relacionamentos:

- um cliente pode realizar várias locações;
- um veículo pode aparecer em várias locações ao longo do tempo;
- cada locação pertence a um cliente e a um veículo.

O arquivo possui validações para CPF, placa, datas, valor da diária, valor total e status da locação.

---

### `controle_estoque_produtos.sql`

Modelo simples para controle de estoque.

O script cria uma tabela para armazenar produtos, quantidade disponível e preço.

Principal tabela:

```txt
estoque_produtos
```

Esse arquivo demonstra:

- criação de tabela simples;
- ID gerado automaticamente;
- validação de nome vazio;
- validação de quantidade negativa;
- validação de preço negativo;
- consulta com preço formatado em reais.

---

### `TabelaEscolaSimples.sql`

Modelo escolar simplificado para Supabase.

Esse script representa uma estrutura básica de escola, com alunos, turmas, disciplinas, matrículas e notas.

Principais tabelas:

```txt
escolas
turmas
alunos
disciplinas
matriculas
notas
```

Principais relacionamentos:

- uma escola pode ter várias turmas;
- uma turma pertence a uma escola;
- um aluno pode estar matriculado em uma turma;
- uma matrícula recebe notas em diferentes disciplinas;
- uma disciplina pode estar ligada a várias notas.

O script também possui:

- dados fictícios;
- validações com `CHECK`;
- views para consulta;
- Row Level Security;
- políticas de leitura para usuários autenticados.

Views criadas:

```txt
vw_boletim_alunos
vw_media_alunos
vw_resumo_escolas
vw_resumo_turmas
vw_resumo_disciplinas
```

---

### `TabelaEscolaCOMP.sql`

Modelo escolar completo e mais avançado.

Esse arquivo representa uma versão mais robusta de um banco de dados escolar, com estrutura mais próxima de um sistema real.

Ele inclui tabelas para:

- cidades;
- escolas;
- cursos;
- séries escolares;
- turnos;
- turmas;
- disciplinas;
- trimestres;
- estudantes;
- matrículas;
- registros de notas;
- observações estudantis;
- ocorrências;
- componentes de avaliação;
- perfis de usuários.

Também possui recursos mais avançados, como:

- tipos `ENUM`;
- validações com `CHECK`;
- funções em PostgreSQL;
- triggers;
- views de resumo;
- políticas de segurança;
- controle de perfis de usuário;
- organização de observações e ocorrências estudantis.

Esse é o arquivo mais completo do projeto na área escolar.

---

### `TabelaIA.sql`

Modelo de banco de dados sobre inteligência artificial e infraestrutura.

O script organiza dados relacionados a empresas, modelos de IA, países, idiomas, infraestrutura, energia, água e custos.

Principais tabelas:

```txt
paises
idiomas
pais_idiomas
localidades
empresas
modelos_ia
implantacoes_ia
metricas_uso
infraestrutura
ambiental
custos
```

Esse arquivo demonstra relacionamentos mais amplos, incluindo relações muitos-para-muitos.

Exemplos de relacionamentos:

- um país pode ter vários idiomas;
- uma implantação de IA pode usar vários modelos;
- uma implantação pode envolver várias empresas;
- uma infraestrutura pode utilizar várias fontes de energia.

O script também utiliza `ENUM`, funções, triggers, views e políticas de segurança.

---

### `sistema_clinica_medica.sql`

Modelo de banco para uma clínica médica.

O script organiza informações sobre pacientes, médicos, convênios, especialidades, consultas, prontuários e pagamentos.

Principais tabelas:

```txt
pacientes
medicos
convenios
paciente_convenios
especialidades
medico_especialidades
tipos_atendimento
salas
horarios_medicos
consultas
prontuarios
pagamentos
```

Principais relacionamentos:

- um paciente pode ter convênios;
- um médico pode ter especialidades;
- uma consulta liga paciente, médico, especialidade, sala e tipo de atendimento;
- uma consulta pode gerar prontuário;
- uma consulta pode ter pagamentos registrados.

O arquivo também possui funções e triggers para validar regras, como conflito de horário, paciente inativo, médico inativo e pagamento maior que o valor da consulta.

---

### `DeleteAll.sql`

Script de limpeza completa do schema `public` no Supabase.

Ele remove objetos como:

- tabelas;
- views;
- materialized views;
- funções;
- tipos personalizados;
- enums.

> Atenção: esse arquivo apaga objetos do banco. Use apenas em ambiente de teste ou quando tiver certeza de que deseja limpar o schema `public`.

## Como executar no Supabase

1. Acesse o painel do Supabase.
2. Abra o projeto desejado.
3. Vá até **SQL Editor**.
4. Crie uma nova query.
5. Copie o conteúdo de um dos arquivos `.sql`.
6. Cole no editor.
7. Execute o script.

## Ordem recomendada para estudar

```txt
1. SQL basic.sql
2. controle_estoque_produtos.sql
3. sistema_pedidos_clientes_produtos.sql
4. sistema_locacao_veiculos.sql
5. sistema_clinica_medica.sql
6. TabelaEscolaSimples.sql
7. TabelaEscolaCOMP.sql
8. TabelaIA.sql
9. DeleteAll.sql somente se precisar limpar o banco
```

## Observações importantes

- Os scripts foram pensados para **Supabase/PostgreSQL**.
- Alguns arquivos usam recursos mais avançados, como `ENUM`, `VIEW`, `FUNCTION`, `TRIGGER` e Row Level Security.
- Para testar sem risco, o ideal é usar um projeto novo no Supabase.
- O arquivo `DeleteAll.sql` deve ser usado com cuidado, pois remove objetos do schema `public`.
- Os dados inseridos nos scripts são fictícios e servem apenas para teste e demonstração.

## Conceitos praticados

- Banco de dados relacional
- Normalização de dados
- Chave primária
- Chave estrangeira
- Relacionamento 1:N
- Relacionamento N:N
- Validações com `CHECK`
- Consultas com `JOIN`
- Views
- Triggers
- Funções SQL
- Segurança com Row Level Security

## Status do projeto

Projeto organizado para fins de estudo, prática e apresentação de atividades SQL usando Supabase.
