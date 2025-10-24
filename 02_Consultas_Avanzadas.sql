--- 1. qry_TopProductos : Top 10 Productos Más Vendidos: Generar un ranking con los 10 productos que han generado más ingresos.

CREATE OR REPLACE VIEW qry_TopProductos AS
SELECT ...
FROM ...
WHERE ...;


--- 2. qry_ProductosBajos : Productos con Bajas Ventas: Identificar los productos en el 10% inferior de ventas para considerar su descontinuación.

CREATE OR REPLACE VIEW qry_ProductosBajos AS
SELECT ...
FROM ...
WHERE ...;


--- 3. qry_ClientesVIP : Clientes VIP: Listar los 5 clientes con el mayor valor de vida (LTV), basado en su gasto total histórico.

CREATE OR REPLACE VIEW qry_ClientesVIP AS
SELECT ...
FROM ...
WHERE ...;


--- 4. qry_VentasMensuales : Análisis de Ventas Mensuales: Mostrar las ventas totales agrupadas por mes y año.

CREATE OR REPLACE VIEW qry_VentasMensuales AS
SELECT ...
FROM ...
WHERE ...;


--- 5. qry_CrecimientoClientes : Crecimiento de Clientes: Calcular el número de nuevos clientes registrados por trimestre.

CREATE OR REPLACE VIEW qry_CrecimientoClientes AS
SELECT ...
FROM ...
WHERE ...;


--- 6. qry_TasaRecompra : Tasa de Compra Repetida: Determinar qué porcentaje de clientes ha realizado más de una compra.

CREATE OR REPLACE VIEW qry_TasaRecompra AS
SELECT ...
FROM ...
WHERE ...;


--- 7. qry_ProductosFrecuentes : Productos Comprados Juntos Frecuentemente: Identificar pares de productos que a menudo se compran en la misma transacción.

CREATE OR REPLACE VIEW qry_ProductosFrecuentes AS
SELECT ...
FROM ...
WHERE ...;


--- 8. qry_RotacionInventario : Rotación de Inventario: Calcular la tasa de rotación de stock para cada categoría de producto.

CREATE OR REPLACE VIEW qry_RotacionInventario AS
SELECT ...
FROM ...
WHERE ...;


--- 9. qry_Reabastecimiento : Productos que Necesitan Reabastecimiento: Listar productos cuyo stock actual esté por debajo de su umbral mínimo.

CREATE OR REPLACE VIEW qry_Reabastecimiento AS
SELECT ...
FROM ...
WHERE ...;


--- 10. qry_CarritosAbandonados : Análisis de Carrito Abandonado (Simulado): Identificar clientes que agregaron productos pero no completaron una venta en un período determinado.

CREATE OR REPLACE VIEW qry_CarritosAbandonados AS
SELECT ...
FROM ...
WHERE ...;


--- 11. qry_RendimientoProveedores : Rendimiento de Proveedores: Clasificar a los proveedores según el volumen de ventas de sus productos.

CREATE OR REPLACE VIEW qry_RendimientoProveedores AS
SELECT ...
FROM ...
WHERE ...;


--- 12. qry_VentasPorRegion : Análisis Geográfico de Ventas: Agrupar las ventas por ciudad o región del cliente.

CREATE OR REPLACE VIEW qry_VentasPorRegion AS
SELECT ...
FROM ...
WHERE ...;


--- 13. qry_VentasPorHora : Ventas por Hora del Día: Determinar las horas pico de compras para optimizar campañas de marketing.

CREATE OR REPLACE VIEW qry_VentasPorHora AS
SELECT ...
FROM ...
WHERE ...;


--- 14. qry_ImpactoPromos : Impacto de Promociones: Comparar las ventas de un producto antes, durante y después de una campaña de descuento.

CREATE OR REPLACE VIEW qry_ImpactoPromos AS
SELECT ...
FROM ...
WHERE ...;


--- 15. qry_CohorteClientes : Análisis de Cohorte: Analizar la retención de clientes mes a mes desde su primera compra.

CREATE OR REPLACE VIEW qry_CohorteClientes AS
SELECT ...
FROM ...
WHERE ...;


--- 16. qry_MargenProducto : Margen de Beneficio por Producto: Calcular el margen de beneficio para cada producto (requiere agregar un campo costo a la tabla de productos).

CREATE OR REPLACE VIEW qry_MargenProducto AS
SELECT ...
FROM ...
WHERE ...;


--- 17. qry_TiempoEntreCompras : Tiempo Promedio Entre Compras: Calcular el tiempo medio que tarda un cliente en volver a comprar.

CREATE OR REPLACE VIEW qry_TiempoEntreCompras AS
SELECT ...
FROM ...
WHERE ...;


--- 18. qry_VistosVsComprados : Productos Más Vistos vs. Comprados: Comparar los productos más visitados con los más comprados.

CREATE OR REPLACE VIEW qry_VistosVsComprados AS
SELECT ...
FROM ...
WHERE ...;


--- 19. qry_SegmentacionRFM : Segmentación de Clientes (RFM): Clasificar a los clientes en segmentos según Recencia, Frecuencia y Valor Monetario.

CREATE OR REPLACE VIEW qry_SegmentacionRFM AS
SELECT ...
FROM ...
WHERE ...;


--- 20. qry_PrediccionDemanda : Predicción de Demanda Simple: Utilizar datos de ventas pasadas para proyectar las ventas del próximo mes para una categoría específica.

CREATE OR REPLACE VIEW qry_PrediccionDemanda AS
SELECT ...
FROM ...
WHERE ...;
