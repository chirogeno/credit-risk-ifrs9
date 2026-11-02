# Diccionario de variables

Las variables con «No» se conocen después de conceder el préstamo, así que no se
pueden usar para predecir el impago.

| Variable | Significado | Tipo | ¿Se conoce al conceder? |
|---|---|---|---|
| `loan_amnt` | Importe solicitado del préstamo | DOUBLE | Sí |
| `term` | Plazo del préstamo, en meses | VARCHAR | Sí |
| `int_rate` | Tipo de interés anual | DOUBLE | Sí |
| `installment` | Cuota mensual que paga el cliente | DOUBLE | Sí |
| `grade` | Calificación de riesgo de Lending Club, de A (mejor) a G (peor) | VARCHAR | Sí |
| `sub_grade` | Subdivisión de la calificación, como C4 | VARCHAR | Sí |
| `purpose` | Finalidad declarada del préstamo | VARCHAR | Sí |
| `application_type` | Solicitud individual o conjunta | VARCHAR | Sí |
| `issue_d` | Mes de concesión del préstamo; define la cosecha | VARCHAR | Sí |
| `emp_length` | Años que lleva trabajando el cliente | VARCHAR | Sí |
| `home_ownership` | Situación de la vivienda: alquiler, hipoteca o propiedad | VARCHAR | Sí |
| `annual_inc` | Ingresos anuales declarados | DOUBLE | Sí |
| `verification_status` | Si se han verificado los ingresos del cliente | VARCHAR | Sí |
| `fico_range_low` | Límite inferior de la puntuación FICO al solicitar | DOUBLE | Sí |
| `dti` | Porcentaje de los ingresos mensuales destinado a pagar deudas | DOUBLE | Sí |
| `delinq_2yrs` | Retrasos de 30 días o más en los últimos 2 años | DOUBLE | Sí |
| `earliest_cr_line` | Fecha de la primera línea de crédito | VARCHAR | Sí |
| `inq_last_6mths` | Consultas de crédito en los últimos 6 meses | DOUBLE | Sí |
| `open_acc` | Cuentas de crédito abiertas | DOUBLE | Sí |
| `pub_rec` | Registros públicos negativos, como quiebras o embargos | DOUBLE | Sí |
| `revol_bal` | Saldo pendiente de crédito revolvente | DOUBLE | Sí |
| `revol_util` | Porcentaje utilizado del crédito revolvente disponible | DOUBLE | Sí |
| `loan_status` | Estado actual del préstamo | VARCHAR | No |
| `total_pymnt` | Total pagado por el cliente hasta la fecha | DOUBLE | No |
| `total_rec_prncp` | Capital devuelto hasta la fecha | DOUBLE | No |
| `out_prncp` | Capital pendiente de devolver | DOUBLE | No |
| `recoveries` | Importe recuperado tras dar el préstamo por perdido | DOUBLE | No |
| `collection_recovery_fee` | Comisión por la recuperación de la deuda | DOUBLE | No |
| `last_pymnt_d` | Fecha del último pago | VARCHAR | No |
| `last_fico_range_high` | Límite superior de la última puntuación FICO consultada | DOUBLE | No |