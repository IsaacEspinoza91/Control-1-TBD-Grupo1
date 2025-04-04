-- 1. Producto más vendido por mes el 2021. [Williams]
-- 2. Producto más económico por tienda. [Omar]
-- 3. Ventas por mes, separadas entre Boletas y Facturas. [Omar]
-- 4. Empleado que ganó más por tienda en 2020, indicando la comuna donde vive y el cargo que tiene en la empresa. [Williams]
-- 5. La tienda que tiene menos empleados. [Bastian]
-- 6. El vendedor con más ventas por mes. [Emir]
WITH ventas_mensuales AS (
    SELECT 
        TO_CHAR(v.fecha, 'Month') AS mes,
        EXTRACT(MONTH FROM v.fecha) AS numero_mes,
        e.primer_nombre || ' ' || e.primer_apellido AS vendedor,
        COUNT(*) AS total_ventas,
        RANK() OVER (PARTITION BY EXTRACT(MONTH FROM v.fecha) ORDER BY COUNT(*) DESC) AS ranking
    FROM Venta v
    JOIN Empleado e ON v.id_empleado = e.id_empleado
    GROUP BY EXTRACT(MONTH FROM v.fecha), TO_CHAR(v.fecha, 'Month'), vendedor
)
SELECT mes, numero_mes, vendedor, total_ventas
FROM ventas_mensuales
WHERE ranking = 1 
ORDER BY numero_mes; 


-- 7. El vendedor que ha recaudado más dinero para la tienda por año. [Isaac]
-- Obtiene recaudacion segun anio, id_empleado e id_tienda
WITH Recau AS (
	SELECT 
		EXTRACT(YEAR FROM fecha) AS anio, V.id_empleado, V.id_tienda, SUM(total) AS recaudacion
	FROM 
		Venta AS V
	GROUP BY 
		anio, V.id_empleado, V.id_tienda
),
-- Obtiene recaudacion anual maxima segun anio, id_tienda pero relaciona la id del empleado que la obtuvo
Recau_anual_max AS (
	SELECT 
		Recau.anio, recau.id_tienda, recau.id_empleado, max_recau
	FROM 
		Recau INNER JOIN (
			-- Obtiene recaudacion maxima segun anio e id_tienda
			SELECT 
				anio, id_tienda, MAX(recaudacion) AS max_recau
			FROM 
				Recau
			GROUP BY 
				anio, id_tienda
		) AS Recau_max
		ON Recau_max.anio=Recau.anio AND Recau_max.id_tienda=Recau.id_tienda AND max_recau=recaudacion 
)

SELECT 
	anio,
	RAM_Tienda.id_tienda,
	RAM_Tienda.nombre AS nombre_tienda,
	E.id_empleado,
	E.primer_nombre || ' ' || E.primer_apellido AS nombre_vendedor,
	max_recau AS mayor_recaudacion
FROM (
	SELECT 
		anio, T.id_tienda, T.nombre, id_empleado, max_recau
	FROM 
		Recau_anual_max AS RAM 
	INNER JOIN 
		Tienda AS T
		ON RAM.id_tienda=T.id_tienda
	) AS RAM_Tienda
	INNER JOIN 
		Empleado AS E
		ON RAM_Tienda.id_empleado=E.id_empleado
ORDER BY 
	anio ASC;



-- 8. El vendedor con más productos vendidos por tienda. [Emir]
WITH ventas_por_tienda AS (
    SELECT 
        v.id_tienda,
        e.primer_nombre || ' ' || e.primer_apellido AS vendedor,
        COUNT(*) AS total_ventas,
        RANK() OVER (PARTITION BY v.id_tienda ORDER BY COUNT(*) DESC) AS ranking
    FROM Venta v
    JOIN Empleado e ON v.id_empleado = e.id_empleado
    GROUP BY v.id_tienda, vendedor
)
SELECT 
    t.nombre,
    vendedor, 
    total_ventas
FROM ventas_por_tienda vp
JOIN Tienda t ON vp.id_tienda = t.id_tienda
WHERE vp.ranking = 1
ORDER BY t.nombre;
-- 9. El empleado con mayor sueldo por mes. [Bastian]


-- 10. La tienda con menor recaudación por mes. [Isaac]
-- Obtiene la recaudacion total de cada tienda segun mes y anio
WITH Recaudacion_mensual_tiendas AS (
	SELECT 
		T.id_tienda, T.nombre, 
		EXTRACT(YEAR FROM fecha) AS anio, 
		EXTRACT(MONTH FROM fecha) AS mes, 
		SUM(V.total) AS recaudado
	FROM
		Venta AS V INNER JOIN Tienda AS T
		ON V.id_tienda=T.id_tienda
	GROUP BY 
		T.id_tienda, T.nombre, anio, mes
), 
-- Obtiene la recaudacion minima entre todas las tiendas segun mes y anio
Minima_recuadacion_mensual_tiendas AS (
	SELECT 
		anio, mes, MIN(recaudado) AS min_recau
	FROM 
		Recaudacion_mensual_tiendas
	GROUP BY 
		anio, mes
)
SELECT 
	R_mensual.anio,
	R_mensual.mes,
	R_mensual.id_tienda,
	R_mensual.nombre AS nombre_tienda,
	min_recau AS menor_recaudacion
FROM 
	Recaudacion_mensual_tiendas AS R_mensual
INNER JOIN 
	Minima_recuadacion_mensual_tiendas AS Mim_r_mensual
	ON R_mensual.anio=Mim_r_mensual.anio AND R_mensual.mes=Mim_r_mensual.mes AND min_recau=recaudado
ORDER BY 
	R_mensual.anio, R_mensual.mes ASC;
