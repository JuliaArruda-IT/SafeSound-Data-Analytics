USE aap_safesound;
 
 # Inserção de dados 
INSERT INTO zonas (nome, limite_dia, limite_noite) VALUES
 ('Residencial', 50, 45),
 ('Mista', 55, 50),
 ('Comenrcial', 60, 55),
 ('Industrial', 70, 65);
 
 INSERT INTO locai (tipo) VALUES
 ('Escola'),
 ('Parque'),
 ('Comércio'),
 ('Residencial');
 
# Ponto de monitoramento (onde será instalado o sensor)
 INSERT INTO pontos_monitoramento (nome, id_local, id_zona, latitute, longitude) VALUES
 ('Fatec', 1, 1, -23.550520, -46.633308);
 
  #Leitura de ruído 
 INSERT INTO leituras_ruido (id_ponto, nivel_db, data_hora) VALUES
 (1, 65.5, NOW());

