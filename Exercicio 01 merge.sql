CREATE SCHEMA dimensional

CREATE TABLE dimensional.dim_carro (
    sk_carro INT IDENTITY(1,1) PRIMARY KEY, 
    placa CHAR(10),                         
    nm_modelo VARCHAR(200),                 
    nm_marca VARCHAR(100),                  
    ano INT,                             
    cor VARCHAR(10)                         
);


CREATE TABLE dimensional.dim_localidade (
    sk_localidade INT IDENTITY(1,1) PRIMARY KEY,
    nk_municipio INT, 
    nm_municipio VARCHAR(100),
    nm_estado VARCHAR(50),
    sigla_uf CHAR(2),
    nm_regiao VARCHAR(50)
);

CREATE TABLE dimensional.dim_cliente (
    sk_cliente INT IDENTITY(1,1) PRIMARY KEY,
    nk_cliente INT, 
    nome VARCHAR(50),
    cpf CHAR(11),
    sexo CHAR(1),
    dt_nascimento DATE,
    bairro VARCHAR(100),
    cidade_cliente VARCHAR(100) 
);

CREATE TABLE dimensional.dim_tempo (
    sk_tempo INT PRIMARY KEY,
    data DATE,
    ano INT,
    mes INT,
    nome_mes VARCHAR(20),
    trimestre INT,
    dia_semana VARCHAR(20)
);


CREATE TABLE dimensional.fato_sinistro (
    sk_cliente INT,
    sk_carro INT,
    sk_localidade INT,
    sk_tempo INT,
    nk_sinistro INT, 
    quantidade_sinistro INT DEFAULT 1,
    
    CONSTRAINT FK_Fato_Cliente FOREIGN KEY (sk_cliente) REFERENCES dimensional.dim_cliente(sk_cliente),
    CONSTRAINT FK_Fato_Carro FOREIGN KEY (sk_carro) REFERENCES dimensional.dim_carro(sk_carro),
    CONSTRAINT FK_Fato_Localidade FOREIGN KEY (sk_localidade) REFERENCES dimensional.dim_localidade(sk_localidade),
    CONSTRAINT FK_Fato_Tempo FOREIGN KEY (sk_tempo) REFERENCES dimensional.dim_tempo(sk_tempo)
);


select * from relacional.cliente


-- Fato: Sinistro, é o evento principal que gera o registro.
-- Métrica: Quantidade de Sinistros, será uma contagem simples ou uma coluna de valor 1 para cada linha.
-- Dimensões: Cliente, Carro (incluindo Marca/Modelo), Localidade (Cidade/Estado/Região) e Tempo.
-- Granularidade: Um registro por evento de sinistro, cada linha na tabela fato representa um único acidente ocorrido.



SET LANGUAGE PORTUGUESE;

WITH Calendario AS (
    SELECT 
        DATEADD(DAY, number, '2023-01-01') AS Data
    FROM 
        master..spt_values
    WHERE 
        type = 'P' 
        AND number BETWEEN 0 AND DATEDIFF(DAY, '2023-01-01', '2026-12-31')
)
INSERT INTO dimensional.dim_tempo (sk_tempo, data, ano, mes, nome_mes, trimestre)
SELECT 
    CAST(FORMAT(Data, 'yyyyMMdd') AS INT) AS sk_tempo, -- Gera o ID tipo 20240308
    CAST(Data AS DATE) AS Data,
    YEAR(Data) AS Ano,
    MONTH(Data) AS Mes,
    UPPER(DATENAME(MONTH, Data)) AS NomeMes,
    DATEPART(QUARTER, Data) AS Trimestre -- Adicionamos o trimestre aqui
FROM Calendario;


MERGE dimensional.dim_localidade AS target
USING (
    SELECT 
        m.cd_municipio, 
        m.nm_municipio, 
        e.nm_estado, 
        e.sigla_uf, 
        r.nm_regiao
    FROM relacional.municipio m
    JOIN relacional.estado e ON m.cd_estado = e.cd_estado
    JOIN relacional.regiao r ON e.cd_regiao = r.cd_regiao
) AS source
ON (target.nk_municipio = source.cd_municipio)

WHEN NOT MATCHED THEN
    INSERT (nk_municipio, nm_municipio, nm_estado, sigla_uf, nm_regiao)
    VALUES (source.cd_municipio, source.nm_municipio, source.nm_estado, source.sigla_uf, source.nm_regiao);



MERGE dimensional.dim_cliente AS target
USING (
    SELECT 
        c.cd_cliente,
        c.nome,
        c.cpf,
        c.sexo,
        c.dt_nascimento,
        e.bairro
    FROM relacional.cliente c
    LEFT JOIN relacional.endereco e ON c.cd_cliente = e.cd_cliente 
) AS source
ON (target.nk_cliente = source.cd_cliente)

WHEN NOT MATCHED THEN
    INSERT (nk_cliente, nome, cpf, sexo, dt_nascimento, bairro)
    VALUES (source.cd_cliente, source.nome, source.cpf, source.sexo, source.dt_nascimento, source.bairro)

WHEN MATCHED THEN
    UPDATE SET 
        target.nome = source.nome,
        target.cpf = source.cpf,
        target.sexo = source.sexo,
        target.dt_nascimento = source.dt_nascimento,
        target.bairro = source.bairro;



MERGE dimensional.dim_carro AS target
USING (
    SELECT 
        c.placa, 
        m.nm_modelo, 
        ma.nm_marca, 
        c.ano, 
        c.cor
    FROM relacional.carro c
    JOIN relacional.modelo m ON c.cd_modelo = m.cd_modelo
    JOIN relacional.marca ma ON m.cd_marca = ma.cd_marca
) AS source
ON (target.placa = source.placa)

WHEN NOT MATCHED THEN
    INSERT (placa, nm_modelo, nm_marca, ano, cor)
    VALUES (source.placa, source.nm_modelo, source.nm_marca, source.ano, source.cor)

WHEN MATCHED THEN
    UPDATE SET 
        target.nm_modelo = source.nm_modelo,
        target.nm_marca = source.nm_marca,
        target.ano = source.ano,
        target.cor = source.cor;





MERGE dimensional.fato_sinistro AS target
USING (
    SELECT 
        dc.sk_cliente,
        dcar.sk_carro,
        dl.sk_localidade,
        dt.sk_tempo,
        s.cd_sinistro AS nk_sinistro,
        1 AS quantidade_sinistro 
    FROM relacional.sinistro s
    JOIN dimensional.dim_carro dcar ON s.placa = dcar.placa
    JOIN relacional.apolice a ON s.placa = a.placa
    JOIN dimensional.dim_cliente dc ON a.cd_cliente = dc.nk_cliente
    JOIN dimensional.dim_localidade dl ON s.local_sinistro = dl.nk_municipio
    JOIN dimensional.dim_tempo dt ON CAST(s.dt_sinistro AS DATE) = dt.data
) AS source
ON (target.nk_sinistro = source.nk_sinistro)

WHEN NOT MATCHED THEN
    INSERT (sk_cliente, sk_carro, sk_localidade, sk_tempo, nk_sinistro, quantidade_sinistro)
    VALUES (source.sk_cliente, source.sk_carro, source.sk_localidade, source.sk_tempo, source.nk_sinistro, source.quantidade_sinistro);


select * from relacional.marca

SELECT TOP 1
    dc.nome,
    SUM(f.quantidade_sinistro) AS total_sinistros
FROM dimensional.fato_sinistro f
JOIN dimensional.dim_cliente dc ON f.sk_cliente = dc.sk_cliente
JOIN dimensional.dim_tempo dt ON f.sk_tempo = dt.sk_tempo
WHERE dt.ano = 2023
GROUP BY dc.nome
ORDER BY total_sinistros DESC;



SELECT nome, total_sinistros
FROM (
    SELECT dc.nome, SUM(f.quantidade_sinistro) AS total_sinistros,
           DENSE_RANK() OVER (ORDER BY SUM(f.quantidade_sinistro) DESC) AS ranking
    FROM dimensional.fato_sinistro f
    JOIN dimensional.dim_cliente dc ON f.sk_cliente = dc.sk_cliente
    JOIN dimensional.dim_tempo dt ON f.sk_tempo = dt.sk_tempo
    WHERE dt.ano = 2023
    GROUP BY dc.nome
) AS r
WHERE ranking = 2;





SELECT TOP 1 
    dcar.nm_modelo, 
    dcar.ano, 
    SUM(f.quantidade_sinistro) AS total
FROM dimensional.fato_sinistro f
JOIN dimensional.dim_carro dcar ON f.sk_carro = dcar.sk_carro
JOIN dimensional.dim_tempo dt ON f.sk_tempo = dt.sk_tempo
WHERE dt.ano = 2024
GROUP BY dcar.nm_modelo, dcar.ano
ORDER BY total DESC;



WITH SinistrosDiarios AS (
    SELECT 
        dt.ano,
        dt.nome_mes,
        dt.data,
        SUM(f.quantidade_sinistro) AS qtde
    FROM dimensional.fato_sinistro f
    JOIN dimensional.dim_tempo dt ON f.sk_tempo = dt.sk_tempo
    WHERE dt.ano = 2023 AND dt.trimestre = 4
    GROUP BY dt.ano, dt.nome_mes, dt.data
)
SELECT DISTINCT
    ano,
    nome_mes,
    FIRST_VALUE(data) OVER (PARTITION BY nome_mes ORDER BY qtde ASC, data ASC) AS menor_data,
    FIRST_VALUE(data) OVER (PARTITION BY nome_mes ORDER BY qtde DESC, data ASC) AS maior_data
FROM SinistrosDiarios;




-- tabela OBT 
SELECT 
    f.nk_sinistro,
    f.quantidade_sinistro,
    dt.*,
    dc.nome AS nome_cliente,
    dc.cpf,
    dc.sexo,
    dc.bairro AS bairro_cliente,
    dcar.placa,
    dcar.nm_modelo,
    dcar.nm_marca,
    dcar.ano AS ano_carro,
    dcar.cor,
    dloc.nm_municipio,
    dloc.nm_estado,
    dloc.sigla_uf,
    dloc.nm_regiao
INTO dimensional.obt_sinistros
FROM dimensional.fato_sinistro f
JOIN dimensional.dim_tempo dt ON f.sk_tempo = dt.sk_tempo
JOIN dimensional.dim_cliente dc ON f.sk_cliente = dc.sk_cliente
JOIN dimensional.dim_carro dcar ON f.sk_carro = dcar.sk_carro
JOIN dimensional.dim_localidade dloc ON f.sk_localidade = dloc.sk_localidade;


INSERT INTO relacional.apolice (cd_apolice, cd_cliente, dt_inicio_vigencia, dt_fim_vigencia, vl_cobertura, vl_franquia, placa)
VALUES (10001, 1, '2023-01-01', '2027-01-01', 50000.00, 2000.00, 'XANDE-2026');

SELECT * FROM dimensional.fato_sinistro WHERE nk_sinistro = 10002;



TRUNCATE TABLE dimensional.obt_sinistros;

INSERT INTO dimensional.obt_sinistros
SELECT f.nk_sinistro, f.quantidade_sinistro, dt.*, dc.nome AS nome_cliente, dc.cpf, dc.sexo, 
       dc.bairro AS bairro_cliente, dcar.placa, dcar.nm_modelo, dcar.nm_marca, 
       dcar.ano AS ano_carro, dcar.cor, dloc.nm_municipio, dloc.nm_estado, 
       dloc.sigla_uf, dloc.nm_regiao
FROM dimensional.fato_sinistro f
JOIN dimensional.dim_tempo dt ON f.sk_tempo = dt.sk_tempo
JOIN dimensional.dim_cliente dc ON f.sk_cliente = dc.sk_cliente
JOIN dimensional.dim_carro dcar ON f.sk_carro = dcar.sk_carro
JOIN dimensional.dim_localidade dloc ON f.sk_localidade = dloc.sk_localidade;


SELECT * FROM dimensional.obt_sinistros WHERE placa = 'XANDE-2026';
