/*
    Author:     Yu Fen Lin
    Date:       November 12, 2019
    Purpose:    Count the number of 2017 population in opportunity youth in defferent diploma
    Note:       
*/
SELECT t.diploma AS degree, 
        COUNT(*) AS popluation_16_18, 
        SUM(COUNT(*)) OVER() AS total_16_18,
        ROUND((count(*) / SUM(COUNT(*)) OVER()) * 100, 0) AS ratio_16_18

FROM(
    SELECT CASE 
        WHEN (schl BETWEEN '01' AND '15') THEN '0_No diploma'
        WHEN (schl BETWEEN '16' AND '17') THEN '1_HS or GED'
        WHEN (schl BETWEEN '18' AND '19') THEN '2_Some college'
        WHEN (schl BETWEEN '20' AND '24') THEN '3_Degree'
        ELSE '4_NA'
        END As diploma
    FROM pums_2017
    WHERE ((puma BETWEEN '11610' AND '11614') OR puma = '11604' OR puma = '11605') -- PUMA
    AND (agep BETWEEN 16 AND 18)
    AND sch = '1' -- No school enrollment
    AND (esr = '2' OR esr = '3' OR esr = '5' OR esr ='6') -- Not at work
    ) t
GROUP BY t.diploma
ORDER BY degree




