-- G1_23BCS13053_Sanampreet Singh
SELECT v.customer_id, COUNT(v.customer_id) as count_no_trans
FROM Visits AS v
LEFT JOIN Transactions AS t
ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY v.customer_id
ORDER BY count_no_trans DESC;
