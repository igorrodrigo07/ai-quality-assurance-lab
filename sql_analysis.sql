-- Total de testes executados
SELECT COUNT(*) AS total_tests FROM test_runs;

-- Taxa média de qualidade
SELECT ROUND(AVG(score)*100,2) AS avg_quality_percent
FROM test_runs;

-- Distribuição dos resultados
SELECT 
  CASE 
    WHEN score = 1 THEN 'Fully Passed'
    WHEN score >= 0.7 THEN 'Partially Passed'
    ELSE 'Failed'
  END AS status,
  COUNT(*) AS quantidade
FROM test_runs
GROUP BY status;