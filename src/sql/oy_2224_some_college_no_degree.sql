SELECT count(*)
FROM pums_2017
WHERE (schl = '18' OR schl = '19') 
AND sch = '1'
AND (esr = '3' OR esr='6')
AND (agep BETWEEN 22 AND 24) 
AND (puma BETWEEN '11610' AND '11614')
;
--32