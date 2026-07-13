# 🎧 SafeSound – Monitoramento Inteligente de Poluição Sonora com Business Intelligence

> Transformando dados de monitoramento ambiental em informações estratégicas para apoiar a tomada de decisão.

## 📖 Sobre o projeto

O **SafeSound** é um projeto acadêmico desenvolvido em equipe com o objetivo de monitorar níveis de poluição sonora em diferentes regiões urbanas utilizando sensores, banco de dados relacional e Business Intelligence.

A solução demonstra como dados coletados por dispositivos de monitoramento podem ser transformados em indicadores, gráficos e dashboards capazes de identificar padrões de ruído, apoiar gestores públicos e facilitar a tomada de decisões voltadas à qualidade de vida da população.

---

## 🎯 Objetivo

Desenvolver um ambiente de Business Intelligence capaz de analisar medições de ruído urbano e responder perguntas como:

* Quais locais apresentam maior poluição sonora?
* Em quais horários ocorrem os maiores níveis de ruído?
* Quantas medições ultrapassam os limites legais?
* Quais regiões exigem maior atenção do poder público?

---

## 💡 Problema

A poluição sonora é um problema urbano frequentemente negligenciado por ser invisível. Embora existam limites legais definidos para diferentes zonas da cidade, a análise manual das medições torna-se inviável à medida que o volume de dados cresce.

O SafeSound utiliza Business Intelligence para transformar dados em informações visuais e de fácil interpretação, permitindo identificar padrões e apoiar decisões baseadas em evidências. 

---

## 📊 Dashboard

O dashboard foi desenvolvido no **Microsoft Power BI** para fornecer uma visão estratégica dos níveis de ruído monitorados.

### Indicadores (KPIs)

* Média geral de ruído
* Maior nível registrado
* Quantidade de leituras críticas

### Visualizações

* Evolução do ruído ao longo do tempo
* Distribuição das classificações (Normal, Atenção e Crítico)
* Comparação entre níveis registrados e limite legal
* Média de ruído por tipo de local
* Tabela detalhada das medições
* Filtros interativos por período, data, zona urbana e local 

---

## 📈 Principais Insights

Durante a análise dos dados foram identificados diversos padrões importantes, entre eles:

* Média geral de **61,15 dB**
* Pico máximo de **79,77 dB**
* **60%** das leituras classificadas como críticas
* O Bairro Residencial apresentou a situação mais preocupante, com média de **66,6 dB**
* A madrugada foi o período com maior nível médio de ruído
* O Shopping foi o único ponto com predominância de leituras em nível normal 

---

## 🛠 Tecnologias utilizadas

* Microsoft Power BI
* Power Query
* Microsoft Excel
* Banco de Dados Relacional
* Business Intelligence
* Modelagem de Dados

---

## 👩🏽‍💻 Minha contribuição

Atuei na equipe responsável pela **Inteligência de Negócios (Business Intelligence)** do projeto.

Minhas principais responsabilidades foram:

* Análise dos dados coletados;
* Identificação de padrões e geração de insights;
* Construção do storytelling analítico;
* Elaboração da justificativa para utilização de Business Intelligence;
* Interpretação dos indicadores apresentados;
* Organização da narrativa dos resultados;
* Ajustes na identidade visual do dashboard.

> **Observação:** o desenvolvimento do banco de dados, a coleta das medições via Arduino e a modelagem inicial do dashboard foram realizados por outras equipes do projeto.

---

## 📂 Estrutura do repositório

```text
SafeSound/
│
├── README.md
├── dashboard/
│   └── SafeSound.pbix
├── database/
│   ├── schema.sql
│   ├── inserts.sql
│   └── consultas.sql
├── dataset/
│   └── dados_simulados.csv
├── images/
│   └── dashboard.png
└── docs/
    └── documentação.pdf
```

---

## 🚀 Próximos passos

Como a base de dados original utilizada no projeto foi gerada por sensores Arduino e não está mais disponível, este repositório será expandido com uma reconstrução completa do ambiente de dados.

Planejo adicionar:

* Novo banco de dados relacional;
* Scripts SQL de criação e carga;
* Dataset simulado;
* Consultas analíticas;
* Documentação técnica;
* Melhorias no dashboard.

---

## 📷 Dashboard

<img width="891" height="499" alt="Captura de tela 2026-07-12 212942" src="https://github.com/user-attachments/assets/256bd26a-0e7a-46db-8853-109cbe441a9b" />


---

## 🎓 Contexto

Projeto desenvolvido como atividade acadêmica interdisciplinar da **FATEC Barueri**, envolvendo equipes responsáveis por hardware, banco de dados, desenvolvimento e Business Intelligence.
