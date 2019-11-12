SELECT count(*)
FROM pums_2017
WHERE (schl = '18' OR schl = '19') 
AND sch = '1'
AND (ESR = '3' OR ESR='6')
AND (agep BETWEEN 16 AND 18) 
AND (puma BETWEEN '11610' AND '11614')
;
--2