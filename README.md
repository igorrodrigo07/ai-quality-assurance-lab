🤖 AI Quality Assurance Lab (SQL Analytics)

Projeto focado em análise de qualidade de respostas de LLMs usando SQL.
Aqui eu simulo execuções de testes de IA e utilizo consultas SQL para gerar métricas de qualidade, taxa de sucesso e insights de QA.

Este projeto demonstra habilidades em:

SQL aplicado a dados reais
Análise de qualidade de IA
Métricas de testes
Pensamento analítico para QA e Data
📊 Estrutura do Projeto
qa_analytics.db        → Banco SQLite com execuções de testes
sql_analysis.sql       → Queries de análise e métricas

A tabela principal simulada é:

test_runs

campo	descrição
id	id da execução
model	modelo de IA usado
prompt	pergunta enviada
response	resposta gerada
expected	resposta esperada
score	nota da resposta (0 a 1)
run_date	data da execução
🧪 Métricas analisadas

O projeto calcula métricas importantes de QA para IA:

Total de testes executados
Taxa média de qualidade
Testes aprovados / parciais / falhos
Distribuição de resultados
Identificação de respostas problemáticas

Essas métricas simulam um cenário real de monitoramento de qualidade de LLM em produção.

▶️ Como executar o projeto

1️⃣ Clonar o repositório

git clone https://github.com/igorrodrigo07/ai-quality-assurance-lab.git

2️⃣ Abrir o banco SQLite (DB Browser ou SQLiteStudio)

3️⃣ Executar o arquivo:

sql_analysis.sql

As queries irão gerar todas as métricas automaticamente.

💡 Objetivo

Demonstrar como QA pode evoluir para AI Quality + Data Analysis, unindo testes de IA com SQL para gerar insights de qualidade.