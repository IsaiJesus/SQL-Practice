# Customer Engagement & Churn Analytics Dataset
URL del dataset: https://www.kaggle.com/datasets/dhairyajeetsingh/ecommerce-customer-behavior-dataset

## Descripción
Este es un conjunto de datos integral sobre la **participación del cliente (Engagement)** y el **abandono (Churn)**. Contiene datos de comportamiento, demográficos y transaccionales de **50,000 clientes** de una plataforma global de comercio electrónico y suscripciones.

El dataset captura **25 características distintas** que proporcionan una visión de 360 grados de las interacciones de los clientes y sus patrones de compromiso.

---

## Características del Dataset
* **Registros:** 50,000 clientes.
* **Atributos:** 25 columnas.
* **Tipos de datos:** Mixtos (Numéricos, categóricos, objetos).
* **Cobertura Geográfica:** Global (USA, UK, Alemania, Canadá, India, Japón, Francia, Australia).
* **Periodo de tiempo:** Registra el viaje del cliente desde el registro hasta su estado actual.

---

## Categorías de las Columnas

### 1. Demografía del Cliente (5 atributos)
* `Age`, `Gender`, `Country`, `City`, `Membership_Years`.

### 2. Interacción con la Plataforma (8 atributos)
* `Login_Frequency`, `Session_Duration_Avg`, `Pages_Per_Session`.
* `Cart_Abandonment_Rate`, `Wishlist_Items`, `Email_Open_Rate`.
* `Mobile_App_Usage`, `Social_Media_Engagement_Score`.

### 3. Comportamiento de Compra (6 atributos)
* `Total_Purchases`, `Average_Order_Value`, `Days_Since_Last_Purchase`.
* `Discount_Usage_Rate`, `Return_Rate`, `Payment_Method_Diversity`.

### 4. Servicio al Cliente (3 atributos)
* `Customer_Service_Calls`, `Product_Reviews_Written`, `Lifetime_Value`.

### 5. Estado Financiero (3 atributos)
* `Credit_Balance`, **`Churned`** (Variable objetivo), `Signup_Quarter`.

---

## Calidad y Formato de los Datos
* **Valores Nulos:** Contiene algunos valores faltantes (`NaN`) en ciertas columnas (ideal para practicar limpieza).
* **Variables Numéricas:** Valores continuos como montos de pedido y puntajes de compromiso.
* **Variables Categóricas:** Género, país, ciudad y métodos de pago.
* **Indicador Binario:** `Churned` (0 = Activo, 1 = Abandonó).

---

# Problemas

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
