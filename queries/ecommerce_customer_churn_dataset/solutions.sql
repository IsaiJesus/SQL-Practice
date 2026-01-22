-- RENAME TABLE/DATASET AS ecommerce. SOME OUTPUTS ARE LIMITED FOR BREVITY.

-- 1. Países únicos: ¿Cuáles son todos los países presentes en el dataset sin que se repitan?
SELECT DISTINCT country
FROM ecommerce;

/*
"France"
"UK"
"Canada"
"USA"
"India"
"Japan"
"Germany"
"Australia"
*/

-- 2. Filtro de antigüedad: Selecciona a todos los clientes que tienen más de 5 años de membresía (Membership_Years).
SELECT *
FROM ecommerce
WHERE membership_years > 5;

/*
Limited:
"40"	"Female"	"USA"	"Phoenix"	"7.1"	"10"	"19.2"	"7"	"69.1"	"6"	"10.0"	"123.99"	"38"	"59"	"1.9"	"9.6"	"4"	"null"	"17.7"	"null"	"4"	"1229.94"	"2446"	"0"	"Q1"
"21"	"Female"	"Australia"	"Adelaide"	"5.6"	"9"	"27.5"	"8.8"	"52.1"	"4"	"16.0"	"80.88"	"42"	"null"	"14"	"null"	"7"	"5"	"28.2"	"25.6"	"1"	"1274.7"	"3107"	"0"	"Q3"
"30"	"Male"	"Germany"	"Cologne"	"5.4"	"8"	"27"	"9"	"61"	"3"	"10.0"	"136.06"	"24"	"23.6"	"null"	"4.6"	"9"	"5"	"15.4"	"null"	"3"	"1585.98"	"240"	"0"	"Q1"
"37"	"Male"	"Germany"	"Munich"	"7.5"	"29"	"48.9"	"15.9"	"27.8"	"14"	"22.0"	"134.1"	"34"	"22.2"	"5.1"	"33.6"	"1"	"10"	"59"	"39.6"	"5"	"3367.15"	"2544"	"1"	"Q3"
"20"	"Male"	"Australia"	"Sydney"	"5.0"	"24"	"56.2"	"14.5"	"22.7"	"9"	"19.0"	"66.29"	"66"	"15.3"	"8.2"	"30.4"	"2"	"5"	"62.5"	"33"	"1"	"1339.58"	"4461"	"1"	"Q3"
*/

-- 3. Conteo de abandono: ¿Cuántos clientes han cancelado su suscripción (Churned = 1)?
SELECT COUNT(*)
FROM ecommerce
WHERE churned = 1;

-- "14450"

-- 4. Promedios básicos: ¿Cuál es la edad (Age) promedio de todos los clientes registrados?
SELECT AVG(age)
FROM ecommerce;

/*
"37.80296810862014"
*/

-- 5. Primeros registros: Lista los 10 primeros clientes que viven en 'France' con sus columnas de City y Gender.
SELECT city, gender
FROM ecommerce
WHERE country = 'France'
LIMIT 10;

/*
"Marseille"	"Male"
"Paris"	"Female"
"Marseille"	"Male"
"Nice"	"Male"
"Toulouse"	"Male"
"Lyon"	"Male"
"Marseille"	"Female"
"Nice"	"Male"
"Paris"	"Female"
"Toulouse"	"Male"
*/

-- 6. Valor por país: Calcula el Average_Order_Value promedio para cada país.
SELECT AVG(average_order_value), country
FROM ecommerce
GROUP BY country;

/*
"119.4827998030042"
"123.22367144934451"
"125.58435984708082"
"121.54472266768781"
"121.52547516984774"
"123.40052699394751"
"125.9377250394135"
"122.86332545393877"
*/

-- 7. Reseñas por género: Encuentra el número total de reseñas escritas (Product_Reviews_Written) agrupadas por Gender.
SELECT gender, COUNT(product_reviews_written)
FROM ecommerce
GROUP BY gender;

/*
"Female"	"23367"
"Male"	"22261"
"Other"	"872"
*/

-- 8. Ciudades activas: ¿Qué ciudades tienen un promedio de Session_Duration_Avg superior a 30 minutos?
SELECT city, AVG(session_duration_avg)
FROM ecommerce
GROUP BY city
HAVING AVG(session_duration_avg) > 30;

/*
No results
*/


-- 9. Uso de descuentos: Calcula la tasa de uso de descuentos (Discount_Usage_Rate) promedio solo para clientes que han realizado más de 15 compras totales.
SELECT AVG(discount_usage_rate)
FROM ecommerce
WHERE total_purchases > 15;

/*
"42.082908285895"
*/

-- 10. Análisis trimestral: Muestra el Lifetime_Value total acumulado por cada trimestre de registro (Signup_Quarter).
SELECT signup_quarter, SUM(lifetime_value)
FROM ecommerce
GROUP BY signup_quarter;

/*
"Q1"	"17975135.08"
"Q2"	"18027109.45"
"Q3"	"18035943.21"
"Q4"	"17993126.86"
*/