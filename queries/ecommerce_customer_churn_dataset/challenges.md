### 🟢 Nivel Bajo (Fundamentos: SELECT, WHERE, COUNT, DISTINCT)

1. **Países únicos:** ¿Cuáles son todos los países presentes en el dataset sin que se repitan?
2. **Filtro de antigüedad:** Selecciona a todos los clientes que tienen más de 5 años de membresía (`Membership_Years`).
3. **Conteo de abandono:** ¿Cuántos clientes han cancelado su suscripción (`Churned` = 1)?
4. **Promedios básicos:** ¿Cuál es la edad (`Age`) promedio de todos los clientes registrados?
5. **Primeros registros:** Lista los 10 primeros clientes que viven en 'France' con sus columnas de `City` y `Gender`.

### 🟡 Nivel Medio (Agregaciones: GROUP BY, HAVING, JOINs conceptuales)

6. **Valor por país:** Calcula el `Average_Order_Value` promedio para cada país.
7. **Reseñas por género:** Encuentra el número total de reseñas escritas (`Product_Reviews_Written`) agrupadas por `Gender`.
8. **Ciudades activas:** ¿Qué ciudades tienen un promedio de `Session_Duration_Avg` superior a 30 minutos?
9. **Uso de descuentos:** Calcula la tasa de uso de descuentos (`Discount_Usage_Rate`) promedio solo para clientes que han realizado más de 15 compras totales.
10. **Análisis trimestral:** Muestra el `Lifetime_Value` total acumulado por cada trimestre de registro (`Signup_Quarter`).

### 🔴 Nivel Alto (Complejidad: Subconsultas, Window Functions, CASE)

11. **Segmentación de clientes:** Clasifica a los clientes en 3 grupos ('Bajo', 'Medio', 'Alto') según su `Lifetime_Value` y cuenta cuántos clientes hay en cada categoría.
12. **Ranking de abandono:** Obtén un ranking de los países según su tasa de abandono (`Churned`), ordenado de mayor a menor porcentaje.
13. **Líderes de saldo:** Para cada país, identifica al cliente que posee el `Credit_Balance` más alto (puedes usar `RANK()` o `ROW_NUMBER()`).
14. **Desviación de compras:** Calcula la diferencia entre el `Average_Order_Value` de cada cliente y el promedio global de toda la plataforma.
15. **Soporte crítico:** Determina qué combinación de `Country` y `City` tiene la mayor suma total de llamadas a servicio al cliente (`Customer_Service_Calls`).
