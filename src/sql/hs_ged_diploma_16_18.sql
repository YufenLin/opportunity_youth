SELECT SUM(pwgtp) AS hs_ged_diploma_16_18
FROM pums_2017
WHERE (schl BETWEEN '16' AND '17')
AND (agep BETWEEN 16 AND 18) 
AND sch = '1'
AND (esr = '3' OR esr='6')
AND (puma BETWEEN '11610' AND '11614')
;
--738