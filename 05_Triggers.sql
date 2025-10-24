-- 1. trg_audit_precio_producto_after_update: Guarda un log de cambios de precios.

DROP TRIGGER IF EXISTS trg_audit_precio_producto_after_update;

DELIMITER //
CREATE TRIGGER trg_audit_precio_producto_after_update
AFTER UPDATE ON producto
FOR EACH ROW
BEGIN
    -- Lógica para registrar los cambios de precio

END //
DELIMITER ;

-- 2. trg_check_stock_before_insert_venta: Verifica el stock antes de registrar una venta.

DROP TRIGGER IF EXISTS trg_check_stock_before_insert_venta;

DELIMITER //
CREATE TRIGGER trg_check_stock_before_insert_venta
BEFORE INSERT ON venta_detalle
FOR EACH ROW
BEGIN
    -- Lógica para verificar el stock disponible

END //
DELIMITER ;

-- 3. trg_update_stock_after_insert_venta: Decrementa el stock después de una venta.

DROP TRIGGER IF EXISTS trg_update_stock_after_insert_venta;

DELIMITER //
CREATE TRIGGER trg_update_stock_after_insert_venta
AFTER INSERT ON venta_detalle
FOR EACH ROW
BEGIN
    -- Lógica para disminuir el stock del producto

END //
DELIMITER ;

-- 4. trg_prevent_delete_categoria_with_products: Impide eliminar una categoría si tiene productos asociados.

DROP TRIGGER IF EXISTS trg_prevent_delete_categoria_with_products;

DELIMITER //
CREATE TRIGGER trg_prevent_delete_categoria_with_products
BEFORE DELETE ON categoria
FOR EACH ROW
BEGIN
    -- Lógica para evitar eliminar categorías con productos

END //
DELIMITER ;

-- 5. trg_log_new_customer_after_insert: Registra cada vez que se crea un nuevo cliente.

DROP TRIGGER IF EXISTS trg_log_new_customer_after_insert;

DELIMITER //
CREATE TRIGGER trg_log_new_customer_after_insert
AFTER INSERT ON cliente
FOR EACH ROW
BEGIN
    -- Lógica para registrar el nuevo cliente en la auditoría

END //
DELIMITER ;

-- 6. trg_update_total_gastado_cliente: Actualiza el total gastado por cliente después de una compra.

DROP TRIGGER IF EXISTS trg_update_total_gastado_cliente;

DELIMITER //
CREATE TRIGGER trg_update_total_gastado_cliente
AFTER INSERT ON venta
FOR EACH ROW
BEGIN
    -- Lógica para actualizar total gastado en cliente

END //
DELIMITER ;

-- 7. trg_set_fecha_modificacion_producto: Actualiza la fecha de última modificación de un producto.

DROP TRIGGER IF EXISTS trg_set_fecha_modificacion_producto;

DELIMITER //
CREATE TRIGGER trg_set_fecha_modificacion_producto
BEFORE UPDATE ON producto
FOR EACH ROW
BEGIN
    -- Lógica para establecer la fecha de modificación

END //
DELIMITER ;

-- 8. trg_prevent_negative_stock: Impide que el stock de un producto sea negativo.

DROP TRIGGER IF EXISTS trg_prevent_negative_stock;

DELIMITER //
CREATE TRIGGER trg_prevent_negative_stock
BEFORE UPDATE ON producto
FOR EACH ROW
BEGIN
    -- Lógica para impedir stock negativo

END //
DELIMITER ;

-- 9. trg_capitalize_nombre_cliente: Convierte la primera letra del nombre y apellido a mayúscula.

DROP TRIGGER IF EXISTS trg_capitalize_nombre_cliente;

DELIMITER //
CREATE TRIGGER trg_capitalize_nombre_cliente
BEFORE INSERT ON cliente
FOR EACH ROW
BEGIN
    -- Lógica para capitalizar nombre y apellido

END //
DELIMITER ;

-- 10. trg_recalculate_total_venta_on_detalle_change: Recalcula el total de una venta al modificar detalles.

DROP TRIGGER IF EXISTS trg_recalculate_total_venta_on_detalle_change;

DELIMITER //
CREATE TRIGGER trg_recalculate_total_venta_on_detalle_change
AFTER UPDATE ON venta_detalle
FOR EACH ROW
BEGIN
    -- Lógica para recalcular el total de la venta

END //
DELIMITER ;

-- 11. trg_log_order_status_change: Audita cada cambio de estado de un pedido.

DROP TRIGGER IF EXISTS trg_log_order_status_change;

DELIMITER //
CREATE TRIGGER trg_log_order_status_change
AFTER UPDATE ON pedido
FOR EACH ROW
BEGIN
    -- Lógica para registrar el cambio de estado

END //
DELIMITER ;

-- 12. trg_prevent_price_zero_or_less: Impide que el precio de un producto sea cero o negativo.

DROP TRIGGER IF EXISTS trg_prevent_price_zero_or_less;

DELIMITER //
CREATE TRIGGER trg_prevent_price_zero_or_less
BEFORE UPDATE ON producto
FOR EACH ROW
BEGIN
    -- Lógica para validar precio mayor a cero

END //
DELIMITER ;

-- 13. trg_send_stock_alert_on_low_stock: Crea una alerta cuando el stock baja de un umbral.

DROP TRIGGER IF EXISTS trg_send_stock_alert_on_low_stock;

DELIMITER //
CREATE TRIGGER trg_send_stock_alert_on_low_stock
AFTER UPDATE ON producto
FOR EACH ROW
BEGIN
    -- Lógica para generar alerta por bajo stock

END //
DELIMITER ;

-- 14. trg_archive_deleted_venta: Mueve una venta eliminada a una tabla de archivo.

DROP TRIGGER IF EXISTS trg_archive_deleted_venta;

DELIMITER //
CREATE TRIGGER trg_archive_deleted_venta
BEFORE DELETE ON venta
FOR EACH ROW
BEGIN
    -- Lógica para archivar la venta antes de eliminarla

END //
DELIMITER ;

-- 15. trg_validate_email_format_on_customer: Valida el formato del correo electrónico del cliente.

DROP TRIGGER IF EXISTS trg_validate_email_format_on_customer;

DELIMITER //
CREATE TRIGGER trg_validate_email_format_on_customer
BEFORE INSERT ON cliente
FOR EACH ROW
BEGIN
    -- Lógica para validar el formato del email

END //
DELIMITER ;

-- 16. trg_update_last_order_date_customer: Actualiza la fecha del último pedido del cliente.

DROP TRIGGER IF EXISTS trg_update_last_order_date_customer;

DELIMITER //
CREATE TRIGGER trg_update_last_order_date_customer
AFTER INSERT ON venta
FOR EACH ROW
BEGIN
    -- Lógica para actualizar última fecha de pedido

END //
DELIMITER ;

-- 17. trg_prevent_self_referral: Impide que un cliente se referencie a sí mismo.

DROP TRIGGER IF EXISTS trg_prevent_self_referral;

DELIMITER //
CREATE TRIGGER trg_prevent_self_referral
BEFORE INSERT ON referidos
FOR EACH ROW
BEGIN
    -- Lógica para evitar autoreferencia

END //
DELIMITER ;

-- 18. trg_log_permission_changes: Audita los cambios de permisos en los usuarios.

DROP TRIGGER IF EXISTS trg_log_permission_changes;

DELIMITER //
CREATE TRIGGER trg_log_permission_changes
AFTER UPDATE ON permisos
FOR EACH ROW
BEGIN
    -- Lógica para registrar cambios en permisos

END //
DELIMITER ;

-- 19. trg_assign_default_category_on_null: Asigna una categoría por defecto si no se especifica ninguna.

DROP TRIGGER IF EXISTS trg_assign_default_category_on_null;

DELIMITER //
CREATE TRIGGER trg_assign_default_category_on_null
BEFORE INSERT ON producto
FOR EACH ROW
BEGIN
    -- Lógica para asignar categoría “General” si está vacía

END //
DELIMITER ;

-- 20. trg_update_producto_count_in_categoria: Mantiene un contador de productos por categoría.

DROP TRIGGER IF EXISTS trg_update_producto_count_in_categoria;

DELIMITER //
CREATE TRIGGER trg_update_producto_count_in_categoria
AFTER INSERT ON producto_categoria
FOR EACH ROW
BEGIN
    -- Lógica para actualizar el contador de productos por categoría

END //
DELIMITER ;
