

SELECT count(*),
   CASE
       WHEN agep BETWEEN 16 AND 18 THEN '16 - 18'
       WHEN agep BETWEEN 19 AND 21 THEN '19 - 21'
       WHEN agep BETWEEN 22 AND 24 THEN '22 - 24'
       ELSE '24 - 99' END AS age_range
FROM pums_2017
WHERE sch = '1'
AND (esr = '3' OR esr = '6')
AND agep BETWEEN 16 AND 24
AND puma BETWEEN '11610' AND '11614'
GROUP BY age_range
--LIMIT 10
--GROUP BY pums_2017.range
;