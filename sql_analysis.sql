-- =========================================
-- AI QUALITY ASSURANCE LAB
-- Análise de qualidade de respostas de LLM
-- Autor: Igor Rodrigo
-- =========================================


-- 1️⃣ Quantos testes já executamos?
SELECT COUNT(*) AS total_tests
FROM test_runs;



-- 2️⃣ Taxa média de qualidade geral (%)
SELECT 
  ROUND(AVG(score) * 100, 2) AS avg_quality_percent
FROM test_runs;



-- 3️⃣ Classificação dos resultados (Passou / Parcial / Falhou)
SELECT 
  CASE 
    WHEN score = 1 THEN 'Passou'
    WHEN score >= 0.7 THEN 'Parcial'
    ELSE 'Falhou'
  END AS resultado,
  COUNT(*) AS quantidade
FROM test_runs
GROUP BY resultado;



-- 4️⃣ Qual foi o melhor resultado obtido?
SELECT MAX(score) AS best_score
FROM test_runs;



-- 5️⃣ Qual foi o pior resultado obtido?
SELECT MIN(score) AS worst_score
FROM test_runs;



-- 6️⃣ Média de qualidade por modelo de IA
SELECT 
  model,
  ROUND(AVG(score) * 100, 2) AS avg_model_score_percent,
  COUNT(*) AS total_tests
FROM test_runs
GROUP BY model;



-- 7️⃣ Histórico de execuções mais recentes
SELECT 
  model,
  ROUND(score * 100, 2) AS score_percent,
  run_date
FROM test_runs
ORDER BY run_date DESC;