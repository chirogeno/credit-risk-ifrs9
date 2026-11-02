-- 1. Préstamos por estado
SELECT loan_status, COUNT(*) AS num_prestamos
FROM prestamos_limpios
GROUP BY loan_status
ORDER BY num_prestamos DESC;

-- 2. Tasa de impago por calificación
SELECT
    grade,
    COUNT(*) AS num_prestamos,
    AVG(CASE WHEN loan_status IN ('Charged Off', 'Default') THEN 1 ELSE 0 END) AS tasa_impago
FROM prestamos_limpios
WHERE loan_status IN ('Fully Paid', 'Charged Off', 'Default')
GROUP BY grade
ORDER BY grade;

-- 3. Tasa de impago por plazo
SELECT
    term,
    COUNT(*) AS num_prestamos,
    AVG(CASE WHEN loan_status IN ('Charged Off', 'Default') THEN 1 ELSE 0 END) AS tasa_impago
FROM prestamos_limpios
WHERE loan_status IN ('Fully Paid', 'Charged Off', 'Default')
GROUP BY term
ORDER BY term;

-- 4. Tasa de impago por calificación y plazo
SELECT
    grade,
    term,
    COUNT(*) AS num_prestamos,
    AVG(CASE WHEN loan_status IN ('Charged Off', 'Default') THEN 1 ELSE 0 END) AS tasa_impago
FROM prestamos_limpios
WHERE loan_status IN ('Fully Paid', 'Charged Off', 'Default')
GROUP BY grade, term
ORDER BY grade, term;

-- 5. Tasa de impago por año de concesión
SELECT
    YEAR(strptime(issue_d, '%b-%Y')) AS anio,
    COUNT(*) AS num_prestamos,
    AVG(CASE WHEN loan_status IN ('Charged Off', 'Default') THEN 1 ELSE 0 END) AS tasa_impago
FROM prestamos_limpios
WHERE loan_status IN ('Fully Paid', 'Charged Off', 'Default')
GROUP BY anio
ORDER BY anio DESC;

-- 6. Porcentaje de préstamos con resultado por año de concesión
SELECT
    YEAR(strptime(issue_d, '%b-%Y')) AS anio,
    COUNT(*) AS num_prestamos,
    AVG(CASE WHEN loan_status IN ('Fully Paid', 'Charged Off', 'Default') THEN 1 ELSE 0 END) AS pct_con_resultado
FROM prestamos_limpios
GROUP BY anio
ORDER BY anio DESC;

-- 7. Tasa de impago e importe medio por finalidad
SELECT
    purpose,
    COUNT(*) AS num_prestamos,
    AVG(loan_amnt) AS importe_medio,
    AVG(CASE WHEN loan_status IN ('Charged Off', 'Default') THEN 1 ELSE 0 END) AS tasa_impago
FROM prestamos_limpios
WHERE loan_status IN ('Fully Paid', 'Charged Off', 'Default')
GROUP BY purpose
ORDER BY tasa_impago DESC;

-- 8. Tasa de impago e importe medio por verificación de ingresos
SELECT
    verification_status,
    COUNT(*) AS num_prestamos,
    AVG(loan_amnt) AS importe_medio,
    AVG(CASE WHEN loan_status IN ('Charged Off', 'Default') THEN 1 ELSE 0 END) AS tasa_impago
FROM prestamos_limpios
WHERE loan_status IN ('Fully Paid', 'Charged Off', 'Default')
GROUP BY verification_status
ORDER BY tasa_impago DESC;

-- 9. Verificación de ingresos dentro de las calificaciones B y D
SELECT
    grade,
    verification_status,
    COUNT(*) AS num_prestamos,
    AVG(loan_amnt) AS importe_medio,
    AVG(CASE WHEN loan_status IN ('Charged Off', 'Default') THEN 1 ELSE 0 END) AS tasa_impago
FROM prestamos_limpios
WHERE loan_status IN ('Fully Paid', 'Charged Off', 'Default')
  AND grade IN ('B', 'D')
GROUP BY grade, verification_status
ORDER BY grade, verification_status;

-- 10. Tasa de impago e importe medio por situación de vivienda
SELECT
    home_ownership,
    COUNT(*) AS num_prestamos,
    AVG(loan_amnt) AS importe_medio,
    AVG(CASE WHEN loan_status IN ('Charged Off', 'Default') THEN 1 ELSE 0 END) AS tasa_impago
FROM prestamos_limpios
WHERE loan_status IN ('Fully Paid', 'Charged Off', 'Default')
GROUP BY home_ownership
ORDER BY tasa_impago DESC;