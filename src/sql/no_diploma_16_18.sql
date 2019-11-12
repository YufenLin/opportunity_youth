--SELECT COUNT(*) * SUM(pwgtp)
SELECT SUM(pwgtp) AS no_diploma_16_18
FROM pums_2017
WHERE (schl BETWEEN '1' AND '15')
AND (agep BETWEEN 16 AND 18) 
AND sch = '1'
AND (ESR = '3' OR ESR='6')
AND (puma BETWEEN '11610' AND '11614')
LIMIT 10
;
--818 