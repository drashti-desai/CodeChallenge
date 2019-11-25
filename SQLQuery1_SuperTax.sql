/****** Script for SelectTopNRows command from SSMS  ******/
SELECT supplier_gstin , COUNT(*) AS CountOf FROM test_dataset GROUP BY supplier_gstin ORDER BY 2;


SELECT supplier_gstin, purchaser_gstin, COUNT(*) AS No_of_rows_for_combination FROM test_dataset GROUP BY supplier_gstin,purchaser_gstin HAVING COUNT(*) >= 1;



