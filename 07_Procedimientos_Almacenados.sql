-- 1. sp_RealizarNuevaVenta: Procesa una nueva venta de forma transaccional.

DROP PROCEDURE IF EXISTS sp_RealizarNuevaVenta;

DELIMITER //

CREATE PROCEDURE sp_RealizarNuevaVenta()
BEGIN
    -- Lógica para procesar una nueva venta

END //

DELIMITER ;


-- 2. sp_AgregarNuevoProducto: Inserta un nuevo producto y sus atributos iniciales.

DROP PROCEDURE IF EXISTS sp_AgregarNuevoProducto;

DELIMITER //

CREATE PROCEDURE sp_AgregarNuevoProducto()
BEGIN
    -- Lógica para insertar un nuevo producto

END //

DELIMITER ;


-- 3. sp_ActualizarDireccionCliente: Actualiza la dirección de un cliente en todas las tablas relevantes.

DROP PROCEDURE IF EXISTS sp_ActualizarDireccionCliente;

DELIMITER //

CREATE PROCEDURE sp_ActualizarDireccionCliente()
BEGIN
    -- Lógica para actualizar la dirección de un cliente

END //

DELIMITER ;


-- 4. sp_ProcesarDevolucion: Gestiona la devolución de un producto.

DROP PROCEDURE IF EXISTS sp_ProcesarDevolucion;

DELIMITER //

CREATE PROCEDURE sp_ProcesarDevolucion()
BEGIN
    -- Lógica para gestionar devolución y ajustar stock

END //

DELIMITER ;


-- 5. sp_ObtenerHistorialComprasCliente: Devuelve el historial completo de compras de un cliente.

DROP PROCEDURE IF EXISTS sp_ObtenerHistorialComprasCliente;

DELIMITER //

CREATE PROCEDURE sp_ObtenerHistorialComprasCliente()
BEGIN
    -- Lógica para obtener historial de compras de un cliente

END //

DELIMITER ;


-- 6. sp_AjustarNivelStock: Permite ajustar manualmente el stock de un producto.

DROP PROCEDURE IF EXISTS sp_AjustarNivelStock;

DELIMITER //

CREATE PROCEDURE sp_AjustarNivelStock()
BEGIN
    -- Lógica para ajustar stock y registrar motivo

END //

DELIMITER ;


-- 7. sp_EliminarClienteDeFormaSegura: Anonimiza los datos de un cliente en lugar de borrarlos.

DROP PROCEDURE IF EXISTS sp_EliminarClienteDeFormaSegura;

DELIMITER //

CREATE PROCEDURE sp_EliminarClienteDeFormaSegura()
BEGIN
    -- Lógica para anonimizar datos del cliente

END //

DELIMITER ;


-- 8. sp_AplicarDescuentoPorCategoria: Aplica un descuento a todos los productos de una categoría.

DROP PROCEDURE IF EXISTS sp_AplicarDescuentoPorCategoria;

DELIMITER //

CREATE PROCEDURE sp_AplicarDescuentoPorCategoria()
BEGIN
    -- Lógica para aplicar descuento por categoría

END //

DELIMITER ;


-- 9. sp_GenerarReporteMensualVentas: Genera un reporte completo de ventas.

DROP PROCEDURE IF EXISTS sp_GenerarReporteMensualVentas;

DELIMITER //

CREATE PROCEDURE sp_GenerarReporteMensualVentas()
BEGIN
    -- Lógica para generar reporte de ventas mensual

END //

DELIMITER ;


-- 10. sp_CambiarEstadoPedido: Cambia el estado de un pedido y notifica a otros sistemas.

DROP PROCEDURE IF EXISTS sp_CambiarEstadoPedido;

DELIMITER //

CREATE PROCEDURE sp_CambiarEstadoPedido()
BEGIN
    -- Lógica para cambiar estado de pedido y notificar

END //

DELIMITER ;


-- 11. sp_RegistrarNuevoCliente: Registra un nuevo cliente validando que el email no exista.

DROP PROCEDURE IF EXISTS sp_RegistrarNuevoCliente;

DELIMITER //

CREATE PROCEDURE sp_RegistrarNuevoCliente()
BEGIN
    -- Lógica para registrar nuevo cliente y validar email

END //

DELIMITER ;


-- 12. sp_ObtenerDetallesProductoCompleto: Devuelve toda la información de un producto.

DROP PROCEDURE IF EXISTS sp_ObtenerDetallesProductoCompleto;

DELIMITER //

CREATE PROCEDURE sp_ObtenerDetallesProductoCompleto()
BEGIN
    -- Lógica para obtener detalles completos del producto

END //

DELIMITER ;


-- 13. sp_FusionarCuentasCliente: Fusiona dos cuentas de cliente duplicadas.

DROP PROCEDURE IF EXISTS sp_FusionarCuentasCliente;

DELIMITER //

CREATE PROCEDURE sp_FusionarCuentasCliente()
BEGIN
    -- Lógica para fusionar cuentas de cliente duplicadas

END //

DELIMITER ;


-- 14. sp_AsignarProductoAProveedor: Asigna o cambia el proveedor de un producto.

DROP PROCEDURE IF EXISTS sp_AsignarProductoAProveedor;

DELIMITER //

CREATE PROCEDURE sp_AsignarProductoAProveedor()
BEGIN
    -- Lógica para asignar o cambiar proveedor de un producto

END //

DELIMITER ;


-- 15. sp_BuscarProductos: Realiza búsqueda avanzada de productos con filtros.

DROP PROCEDURE IF EXISTS sp_BuscarProductos;

DELIMITER //

CREATE PROCEDURE sp_BuscarProductos()
BEGIN
    -- Lógica para buscar productos con filtros

END //

DELIMITER ;


-- 16. sp_ObtenerDashboardAdmin: Devuelve KPIs para panel de administración.

DROP PROCEDURE IF EXISTS sp_ObtenerDashboardAdmin;

DELIMITER //

CREATE PROCEDURE sp_ObtenerDashboardAdmin()
BEGIN
    -- Lógica para generar dashboard de administración

END //

DELIMITER ;


-- 17. sp_ProcesarPago: Simula el procesamiento de un pago para una venta.

DROP PROCEDURE IF EXISTS sp_ProcesarPago;

DELIMITER //

CREATE PROCEDURE sp_ProcesarPago()
BEGIN
    -- Lógica para procesar pago y actualizar estado de venta

END //

DELIMITER ;


-- 18. sp_AñadirReseñaProducto: Permite a un cliente añadir reseña y calificación a un producto.

DROP PROCEDURE IF EXISTS sp_AñadirReseñaProducto;

DELIMITER //

CREATE PROCEDURE sp_AñadirReseñaProducto()
BEGIN
    -- Lógica para añadir reseña y calificación de producto

END //

DELIMITER ;


-- 19. sp_ObtenerProductosRelacionados: Devuelve productos relacionados a uno dado.

DROP PROCEDURE IF EXISTS sp_ObtenerProductosRelacionados;

DELIMITER //

CREATE PROCEDURE sp_ObtenerProductosRelacionados()
BEGIN
    -- Lógica para obtener productos relacionados

END //

DELIMITER ;


-- 20. sp_MoverProductosEntreCategorias: Mueve productos de una categoría a otra de forma segura.

DROP PROCEDURE IF EXISTS sp_MoverProductosEntreCategorias;

DELIMITER //

CREATE PROCEDURE sp_MoverProductosEntreCategorias()
BEGIN
    -- Lógica para mover productos entre categorías

END //

DELIMITER ;
