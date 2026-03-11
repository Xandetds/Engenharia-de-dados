
CREATE TABLE apolice(
	cod_apolice int NOT NULL,
	cod_cliente int NOT NULL,
	data_inicio_vigencia date NULL,
	data_fim_vigencia date NULL,
	valor_cobertura numeric(10, 2) NULL,
	valor_franquia numeric(10, 2) NULL,
	placa varchar(10) NULL,
 CONSTRAINT pk_apolice PRIMARY KEY (cod_cliente,cod_apolice)
)
;

CREATE TABLE carro(
	placa varchar(10) NOT NULL,
	modelo varchar(50) NULL,
	chassi varchar(30) NOT NULL,
	marca varchar(30) NULL,
	ano int NULL,
	cor varchar(10) NULL,
 CONSTRAINT pk_carro PRIMARY KEY (placa)
)
;

CREATE TABLE cliente(
	cod_cliente int NOT NULL,
	nome varchar(50) NULL,
	cpf char(11) NOT NULL,
	sexo char(1) NULL,
	endereco varchar(200) NULL,
	telefone_fixo varchar(50) NULL,
	telefone_celular varchar(50) NULL,
 CONSTRAINT pk_cliente PRIMARY KEY (cod_cliente)
)
;

CREATE TABLE sinistro(
	cod_sinistro int NOT NULL,
	placa varchar(10) NOT NULL,
	data_sinistro date NULL,
	hora_sinistro time(7) NULL,
	local_sinistro varchar(100) NULL,
	condutor char(100) NULL,
 CONSTRAINT pk_sinistro PRIMARY KEY (cod_sinistro,placa)
)
;

INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200001, 1, CAST(N'2021-02-24' AS Date), CAST(N'2022-02-24' AS Date), CAST(2565.25 AS Numeric(10, 2)), CAST(100.25 AS Numeric(10, 2)), N'MZT1826');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200010, 1, CAST(N'2021-08-24' AS Date), CAST(N'2022-08-24' AS Date), CAST(9425.25 AS Numeric(10, 2)), CAST(68.64 AS Numeric(10, 2)), N'NAP5760');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200012, 1, CAST(N'2022-05-24' AS Date), CAST(N'2023-05-24' AS Date), CAST(19970.84 AS Numeric(10, 2)), CAST(157.80 AS Numeric(10, 2)), N'CCR8096');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200007, 2, CAST(N'2022-11-24' AS Date), CAST(N'2023-11-24' AS Date), CAST(19509.51 AS Numeric(10, 2)), CAST(61.00 AS Numeric(10, 2)), N'NFT2212');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200011, 2, CAST(N'2022-12-24' AS Date), CAST(N'2023-12-24' AS Date), CAST(7865.55 AS Numeric(10, 2)), CAST(89.16 AS Numeric(10, 2)), N'ALD3834');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200003, 3, CAST(N'2023-02-24' AS Date), CAST(N'2024-02-24' AS Date), CAST(19456.46 AS Numeric(10, 2)), CAST(146.99 AS Numeric(10, 2)), N'JIE0952');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200004, 3, CAST(N'2021-10-24' AS Date), CAST(N'2022-10-24' AS Date), CAST(4615.60 AS Numeric(10, 2)), CAST(47.77 AS Numeric(10, 2)), N'LVX7086');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200005, 3, CAST(N'2022-10-24' AS Date), CAST(N'2023-10-24' AS Date), CAST(19130.12 AS Numeric(10, 2)), CAST(181.57 AS Numeric(10, 2)), N'LWJ9156');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200016, 3, CAST(N'2022-06-24' AS Date), CAST(N'2023-06-24' AS Date), CAST(15760.31 AS Numeric(10, 2)), CAST(132.84 AS Numeric(10, 2)), N'EEE1056');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200014, 4, CAST(N'2021-12-24' AS Date), CAST(N'2022-12-24' AS Date), CAST(15040.52 AS Numeric(10, 2)), CAST(161.51 AS Numeric(10, 2)), N'GQY6753');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200015, 4, CAST(N'2023-02-24' AS Date), CAST(N'2024-02-24' AS Date), CAST(16261.87 AS Numeric(10, 2)), CAST(180.20 AS Numeric(10, 2)), N'DLA3438');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200009, 6, CAST(N'2023-03-24' AS Date), CAST(N'2024-03-24' AS Date), CAST(17561.01 AS Numeric(10, 2)), CAST(169.48 AS Numeric(10, 2)), N'FFR1234');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200002, 7, CAST(N'2022-02-24' AS Date), CAST(N'2023-02-24' AS Date), CAST(16081.90 AS Numeric(10, 2)), CAST(28.79 AS Numeric(10, 2)), N'NEM5116');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200006, 7, CAST(N'2022-02-24' AS Date), CAST(N'2023-02-24' AS Date), CAST(12595.89 AS Numeric(10, 2)), CAST(20.45 AS Numeric(10, 2)), N'IAC8974');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200008, 7, CAST(N'2022-10-24' AS Date), CAST(N'2023-10-24' AS Date), CAST(6815.28 AS Numeric(10, 2)), CAST(145.16 AS Numeric(10, 2)), N'IAC8974');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200013, 7, CAST(N'2023-03-24' AS Date), CAST(N'2024-03-24' AS Date), CAST(2737.30 AS Numeric(10, 2)), CAST(25.81 AS Numeric(10, 2)), N'IAC8974');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'ALD3834', N'CLIO', N'34574215969', N'RENAULT', 2011, N'BRANCO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'CCR8096', N'CRETA', N'88547875547', N'HYUNDAI', 2020, N'BRANCO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'DLA3438', N'PUNTO', N'98823483434', N'FIAT', 2013, N'PRETO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'EEE1056', N'ECO SPORT', N'56753453455', N'FORD', 2020, N'AZUL');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'FFR1234', N'PALIO', N'32383478747', N'FIAT', 2009, N'AMARELO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'GQY6753', N'S10', N'72004160549', N'GM', 2015, N'PRETO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'IAC8974', N'TIGUAN', N'77130757746', N'VOLKSWAGEN', 2022, N'AZUL');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'JIE0952', N'PASSAT', N'87493270405', N'VOLKSWAGEN', 2016, N'CINZA');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'JNU7898', N'2020', N'87628347687', N'FORD', 2020, N'VERDE');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'LVX7086', N'SANDERO', N'00025131958', N'RENAULT', 1999, N'VERMELHO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'LWJ9156', N'ONIX', N'40991078801', N'GM', 2015, N'AZUL');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'MZT1826', N'GOL', N'41150439528', N'VOLKSWAGEN', 1998, N'AMARELO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'NAP5760', N'COMPASS', N'40364369549', N'JEEP', 2017, N'PRETO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'NEM5116', N'2008', N'69469771523', N'PEUGEOT', 2018, N'PRETO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'NFT2212', N'KWID', N'12344343433', N'RENAULT', 2023, N'BRANCO');
INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (1, N'MARISA MELO OLIVEIRA', N'11111111111', N'F', N'RUA JOSÃ‰ WOSCH SOBRINHO, 1938', N'(41) 5096-4117', N'(41) 5096-4117');
INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (2, N'MURILO CARVALHO CARDOSO', N'22222222222', N'M', N'RUA GEORGE BERNANOS, 122800', N'(21) 3944-5385', NULL);
INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (3, N'VINICIUS ROCHA RODRIGUES', N'33333333333', N'M', NULL, NULL, NULL);
INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (4, N'CAROLINA ROCHA GOMES', N'44444444444', N'F', NULL, NULL, NULL);
INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (5, N'ALINE SANTOS CASTRO', N'55555555555', N'F', N'RUA ARMANDO PACAGNELLA, 1259', N'(19) 7287-2893', N'(19) 7287-2893');
INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (6, N'LEILA CORREIA CAVALCANTI', N'66666666666', N'F', N'RUA FRANCISCO D''ARAGE, 930', NULL, NULL);
INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (7, N'SOPHIA CORREIA SANTOS', N'77777777777', N'F', N'RUA JOÃƒO FORTES, 372', N'(49) 8269-6660', N'(49) 8269-6660');
INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (8, N'JOÃƒO CORREIA COSTA', N'88888888888', N'M', N'RUA PARAGUÃ, 526', N'(51) 7774-2809', N'(51) 7774-2809');
INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (9, N'RAFAEL DIAS SOUZA', N'99999999999', N'M', N'RUA MARIA MARCHI VISSALI, 74', N'(16) 7459-3139', N'(16) 7459-3139');
INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255501, N'ALD3834', CAST(N'2022-10-30' AS Date), CAST(N'11:00' AS Time), N'CRICIUMA', N'ARAUJO                                                                                              ');
INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255502, N'GQY6753', CAST(N'2022-11-20' AS Date), CAST(N'10:34' AS Time), N'ICARA', N'CARDOSO                                                                                             ');
INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255503, N'IAC8974', CAST(N'2022-05-24' AS Date), CAST(N'22:40' AS Time), N'TUBARAO', N'CUNHA                                                                                               ');
INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255504, N'LVX7086', CAST(N'2023-01-25' AS Date), CAST(N'07:37' AS Time), N'URUSSANGA', N'SILVA                                                                                               ');
INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255505, N'MZT1826', CAST(N'2024-03-27' AS Date), CAST(N'15:40' AS Time), N'SIDEROPOLIS', N'LUIZ                                                                                                ');
INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255506, N'MZT1826', CAST(N'2023-10-20' AS Date), CAST(N'16:00' AS Time), N'FLORIANOPOLIS', N'JOAO                                                                                                ');
INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255507, N'MZT1826', CAST(N'2022-05-08' AS Date), CAST(N'18:00' AS Time), N'NOVA VENEZA', N'LUCAS                                                                                               ');
INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255508, N'IAC8974', CAST(N'2022-08-08' AS Date), CAST(N'21:00' AS Time), N'CRICIUMA', N'PEDRO                                                                                               ');

ALTER TABLE apolice  ADD  CONSTRAINT fk_carro__apolice FOREIGN KEY(placa)
REFERENCES carro (placa)
;
ALTER TABLE apolice  ADD  CONSTRAINT fk_cliente__apolice FOREIGN KEY(cod_cliente)
REFERENCES cliente (cod_cliente)
;
ALTER TABLE sinistro  ADD  CONSTRAINT fk_carro__sinistro FOREIGN KEY(placa)
REFERENCES carro (placa)
;