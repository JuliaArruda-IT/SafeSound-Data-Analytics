USE aap_safesound;

# tabela zonas, usadas para armazenar o limite de ruído
CREATE TABLE zonas (
    id_zona INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    limite_dia DECIMAL (5,2),
    limite_noite DECIMAL (5,2)
);

# tabela locais, define o ambiente que será monitorado
CREATE TABLE locais (
    id_local INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL
);

# pontos_monitoramento, representa os locais aonde os sensores serão instalados
CREATE TABLE pontos_monitoramento (
    id_ponto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_local INT,
    id_zona INT,
    latitude DECIMAL (9,6),
    longitude DECIMAL (9,6),
    FOREIGN KEY (id_local) REFERENCES locais(id_local),
    FOREIGN KEY (id_zona) REFERENCES zonas (id_zona)
);

# leituras_ruído, armazenará os dados obtidos pelos sensores
CREATE TABLE leituras_ruido (
    id_leitura INT AUTO_INCREMENT PRIMARY KEY,
    id_ponto INT,
    nivel_db INT,
    data_hora DATETIME,
    FOREIGN KEY (id_ponto) REFERENCES pontos_monitoramento(id_ponto)
);
