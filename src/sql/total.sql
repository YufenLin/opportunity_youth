/*
    Author:     Yu Fen Lin
    Date:       November 12, 2019
    Purpose:    Count the number of 2017 population in opportunity youth in defferent diploma
    Note:
*/


SELECT age1618.diploma AS degree, 
    ROUND((count(*) / SUM(COUNT(*)) OVER()) * 100, 0) AS ratio_16_18,
    COUNT(*) AS popluation_16_18, 
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
    AND (agep BETWEEN 22 AND 24)
    AND sch = '1' -- No school enrollment
    AND (esr = '2' OR esr = '3' OR esr = '5' OR esr ='6') -- Not at work
    ) age2224
    GROUP BY age2224.diploma

-------------------------------------------------------
-- SELECT schl, pwgtp
-- INTO diploma02
-- FROM pums_2017
-- WHERE ((puma BETWEEN '11610' AND '11614') OR puma = '11604' OR puma = '11605') -- PUMA
-- AND (agep BETWEEN 16 AND 18)
-- AND sch = '1' -- No school enrollment
-- AND (esr = '2' OR esr = '3' OR esr = '5' OR esr ='6') -- Not at work

-- ALTER TABLE diploma02
-- ADD degree VARCHAR;


-- UPDATE diploma02
-- SET degree = '0_No diploma'
-- WHERE (schl BETWEEN '01' AND '15');
-- UPDATE diploma02
-- SET degree = '1_HS or GED'
-- WHERE (schl BETWEEN '16' AND '17');
-- UPDATE diploma02
-- SET degree = '2_Some college'
-- WHERE (schl BETWEEN '18' AND '19');
-- UPDATE diploma02
-- SET degree = '4_Degree'
-- WHERE (schl BETWEEN '20' AND '24');

-- SELECT degree, count(*)
-- FROM diploma02
-- GROUP BY degree
-- ORDER BY degree



/* Check the sum */
-------------------------------------------------------
-- SELECT COUNT(*) 
-- FROM pums_2017
-- WHERE ((puma BETWEEN '11610' AND '11614') OR puma = '11604' OR puma = '11605')
-- AND (agep BETWEEN 22 AND 24)
-- AND sch = '1' -- No school enrollment
-- AND (esr = '2' OR esr = '3' OR esr = '5' OR esr ='6') -- Not at work 
-------------------------------------------------------

-- UPDATE TABLE pums_2017 AS(
--     SET
--         diploma = 1
--     WHERE puma BETWEEN '11610' AND '11614' -- PUMA
--     AND (agep BETWEEN 16 AND 18)
--     AND sch = '1' -- No school enrollment
--     AND (esr = '2' OR esr = '3' OR esr = '5' OR esr ='6') -- Not at work


--     SELECT schl
        -- CASE
        -- WHEN schl = '01' THEN 'ND'
        -- -- WHEN (schl BETWEEN '01' AND '15') THEN 1
        -- -- WHEN (schl BETWEEN '16' AND '17') THEN 'HS_GED'
        -- -- WHEN (schl BETWEEN '18' AND '19') THEN 'SC'
        -- -- WHEN (schl BETWEEN '20' AND '24') THEN 'DE'
        -- ELSE 'NA'
    --END AS diploma
    -- FROM pums_2017
    -- WHERE puma BETWEEN '11610' AND '11614' -- PUMA
    -- AND (agep BETWEEN 16 AND 18)
    -- AND sch = '1' -- No school enrollment
    -- AND (esr = '2' OR esr = '3' OR esr = '5' OR esr ='6') -- Not at work
    -- LIMIT 10
--);

-- SELECT SUM(pwgtp) FROM pums_2017
-- WHERE (puma BETWEEN '11610' AND '11614')