#  Proyecto de Base de Datos para un E-commerce


##  Estructura del Proyecto

---

```bash
  Proyecto_Ecommerce_SQL
│
├── 01_Esquema_y_Datos
    ├── e_commerce_ddl.sql
    ├── e_commerce_dml.sql
├── 02_Consultas_Avanzadas.sql
├── 03_Funciones.sql
├── 04_Seguridad.sql
├── 05_Triggers.sql
├── 06_Eventos.sql
├── 07_Procedimientos_Almacenados.sql
└── README.md

```

##  Descripción Breve

Este proyecto tiene como objetivo diseñar y desarrollar una base de datos completa para un sistema de comercio electrónico (E-commerce). La base de datos permite gestionar productos, clientes, pedidos, pagos, inventarios y reportes, además de incluir funcionalidades avanzadas como procedimientos almacenados, funciones, triggers, eventos programados y políticas de seguridad para garantizar la integridad y eficiencia de la información.

---

##  Integrantes del Equipo
- MAICOLL STIVEN MENDEZ CUADROS
- EDUAR HUMBERTO GUERRERO VERGEL
- JUAN DAVID QUIÑONEZ ROJAS

---

##  Instrucciones de Ejecución

Para construir y probar la base de datos, sigue el siguiente orden de ejecución de los archivos `.sql`:

# 1. **`Esquema_y_Datos`**
   - Ejecutar este archivo primero para crear todas las tablas de la base de datos y cargar los datos iniciales (estructura y registros de ejemplo).

  # 1.1  ecommerce_ddl
    - ljhlsjfdhljdf
  # 1.2  ecommerce_ddl
    - ljohfl

# 2. **`Consultas_Avanzadas.sql`**
   - Cada consulta incluye un comentario explicando la pregunta de negocio que responde.

     ## Consultas Avanzadas del Proyecto **Ecommerce_SQL**

      A continuación se listan las **consultas personalizadas** creadas en MySQL para el proyecto **Ecommerce_SQL**.
      Cada una cumple un propósito analítico dentro del sistema de gestión del E-commerce.

      | #  | Nombre de la Consulta | Descripción |
      |----|------------------------|--------------|
      | 1  | `qry_TopProductos` | **Top 10 Productos Más Vendidos:** Generar un ranking con los 10 productos que han generado más ingresos. |
      | 2  | `qry_ProductosBajos` | **Productos con Bajas Ventas:** Identificar los productos en el 10% inferior de ventas para considerar su descontinuación. |
      | 3  | `qry_ClientesVIP` | **Clientes VIP:** Listar los 5 clientes con el mayor valor de vida (LTV), basado en su gasto total histórico. |
      | 4  | `qry_VentasMensuales` | **Análisis de Ventas Mensuales:** Mostrar las ventas totales agrupadas por mes y año. |
      | 5  | `qry_CrecimientoClientes` | **Crecimiento de Clientes:** Calcular el número de nuevos clientes registrados por trimestre. |
      | 6  | `qry_TasaRecompra` | **Tasa de Compra Repetida:** Determinar qué porcentaje de clientes ha realizado más de una compra. |
      | 7  | `qry_ProductosFrecuentes` | **Productos Comprados Juntos Frecuentemente:** Identificar pares de productos que a menudo se compran en la misma transacción. |
      | 8  | `qry_RotacionInventario` | **Rotación de Inventario:** Calcular la tasa de rotación de stock para cada categoría de producto. |
      | 9  | `qry_Reabastecimiento` | **Productos que Necesitan Reabastecimiento:** Listar productos cuyo stock actual esté por debajo de su umbral mínimo. |
      | 10 | `qry_CarritosAbandonados` | **Análisis de Carrito Abandonado (Simulado):** Identificar clientes que agregaron productos pero no completaron una venta en un período determinado. |
      | 11 | `qry_RendimientoProveedores` | **Rendimiento de Proveedores:** Clasificar a los proveedores según el volumen de ventas de sus productos. |
      | 12 | `qry_VentasPorRegion` | **Análisis Geográfico de Ventas:** Agrupar las ventas por ciudad o región del cliente. |
      | 13 | `qry_VentasPorHora` | **Ventas por Hora del Día:** Determinar las horas pico de compras para optimizar campañas de marketing. |
      | 14 | `qry_ImpactoPromos` | **Impacto de Promociones:** Comparar las ventas de un producto antes, durante y después de una campaña de descuento. |
      | 15 | `qry_CohorteClientes` | **Análisis de Cohorte:** Analizar la retención de clientes mes a mes desde su primera compra. |
      | 16 | `qry_MargenProducto` | **Margen de Beneficio por Producto:** Calcular el margen de beneficio para cada producto (requiere agregar un campo costo a la tabla de productos). |
      | 17 | `qry_TiempoEntreCompras` | **Tiempo Promedio Entre Compras:** Calcular el tiempo medio que tarda un cliente en volver a comprar. |
      | 18 | `qry_VistosVsComprados` | **Productos Más Vistos vs. Comprados:** Comparar los productos más visitados con los más comprados. |
      | 19 | `qry_SegmentacionRFM` | **Segmentación de Clientes (RFM):** Clasificar a los clientes en segmentos según Recencia, Frecuencia y Valor Monetario. |
      | 20 | `qry_PrediccionDemanda` | **Predicción de Demanda Simple:** Utilizar datos de ventas pasadas para proyectar las ventas del próximo mes para una categoría específica. |



# 3. **`Funciones.sql`**
   - Ejecutar este archivo para crear las 20 funciones personalizadas utilizadas en la lógica del sistema.

     ##  Funciones Definidas en la Base de Datos

      A continuación se listan las funciones personalizadas creadas en MySQL para el proyecto **Ecommerce_SQL** .
      Cada una cumple un propósito específico dentro del sistema de gestión.

      | # |  Nombre de la Función |  Descripción |
      |---|--------------------------|----------------|
      | 1  | `fn_CalcularTotalVenta` | Calcula el monto total de una venta específica. |
      | 2  | `fn_VerificarDisponibilidadStock` | Valida si hay stock suficiente para un producto. |
      | 3  | `fn_ObtenerPrecioProducto` | Devuelve el precio actual de un producto. |
      | 4  | `fn_CalcularEdadCliente` | Calcula la edad de un cliente a partir de su fecha de nacimiento. |
      | 5  | `fn_FormatearNombreCompleto` | Devuelve el nombre y apellido de un cliente en un formato estandarizado. |
      | 6  | `fn_EsClienteNuevo` | Retorna **VERDADERO** si un cliente realizó su primera compra en los últimos 30 días. |
      | 7  | `fn_CalcularCostoEnvio` | Calcula el costo de envío basado en el peso total de los productos de una venta. |
      | 8  | `fn_AplicarDescuento` | Aplica un porcentaje de descuento a un monto dado. |
      | 9  | `fn_ObtenerUltimaFechaCompra` | Devuelve la fecha de la última compra de un cliente. |
      | 10 | `fn_ValidarFormatoEmail` | Comprueba si una cadena tiene un formato de correo electrónico válido. |
      | 11 | `fn_ObtenerNombreCategoria` | Devuelve el nombre de la categoría a partir del ID de un producto. |
      | 12 | `fn_ContarVentasCliente` | Cuenta el número total de compras realizadas por un cliente. |
      | 13 | `fn_CalcularDiasDesdeUltimaCompra` | Devuelve los días transcurridos desde la última compra de un cliente. |
      | 14 | `fn_DeterminarEstadoLealtad` | Asigna un estado de lealtad (Bronce, Plata, Oro) según el gasto total del cliente. |
      | 15 | `fn_GenerarSKU` | Genera un código único de producto (SKU) basado en su nombre y categoría. |
      | 16 | `fn_CalcularIVA` | Calcula el impuesto (IVA) sobre el total de una venta. |
      | 17 | `fn_ObtenerStockTotalPorCategoria` | Suma el stock de todos los productos dentro de una categoría. |
      | 18 | `fn_EstimarFechaEntrega` | Calcula la fecha estimada de entrega según la ubicación del cliente. |
      | 19 | `fn_ConvertirMoneda` | Convierte un monto a otra moneda usando una tasa de cambio fija. |
      | 20 | `fn_ValidarComplejidadContraseña` | Verifica si una contraseña cumple los criterios de seguridad. |


# 4. **`Seguridad.sql`**
   - Ejecutar este archivo para crear los roles, usuarios y asignar permisos (instrucciones `CREATE ROLE`, `CREATE USER`, `GRANT`).

     ## Roles y Políticas de Seguridad — Proyecto Ecommerce_SQL

        A continuación, se listan los **roles, usuarios y políticas** implementadas en **MySQL** para el proyecto **Ecommerce_SQL**.
        Cada elemento cumple una función específica dentro del sistema de control de acceso y gestión de seguridad.

        | #  | **Nombre del Rol / Política** | **Descripción** |
        |----|-------------------------------|-----------------|
        | 1  | **Administrador_Sistema** | Crear el rol Administrador_Sistema con todos los privilegios. |
        | 2  | **Gerente_Marketing** | Crear el rol Gerente_Marketing con acceso de solo lectura a ventas y clientes. |
        | 3  | **Analista_Datos** | Crear el rol Analista_Datos con acceso de solo lectura a todas las tablas, excepto a las de auditoría. |
        | 4  | **Empleado_Inventario** | Crear el rol Empleado_Inventario que solo pueda modificar la tabla productos (stock y ubicación). |
        | 5  | **Atencion_Cliente** | Crear el rol Atencion_Cliente que pueda ver clientes y ventas, pero no modificar precios. |
        | 6  | **Auditor_Financiero** | Crear el rol Auditor_Financiero con acceso de solo lectura a ventas, productos y registros de precios. |
        | 7  | **Usuario_Admin** | Cree un usuario admin_user y asígnele el rol de administrador. |
        | 8  | **Usuario_Marketing** | Crea un usuario marketing_user y asígnale el rol de marketing. |
        | 9  | **Usuario_Inventario** | Cree un inventario usuario_user y asígnele el rol de inventario. |
        | 10 | **Usuario_Soporte** | Cree un usuario support_user y asígnele el rol de atención al cliente. |
        | 11 | **Restricción_Analista_Datos** | Impedir que el rol Analista_Datos pueda ejecutar comandos DELETE o TRUNCATE. |
        | 12 | **Permiso_Gerente_Marketing** | Otorgar al rol Gerente_Marketing permiso para ejecutar procedimientos almacenados de informes de marketing. |
        | 13 | **Vista_Clientes_Basica** | Cree una vista v_info_clientes_basica que oculte información sensible y dar acceso a ella al rol Atencion_Cliente. |
        | 14 | **Restricción_Precio_Inventario** | Revocar el permiso de UPDATE sobre la columna precio de la tabla productos al rol Empleado_Inventario. |
        | 15 | **Politica_Contraseñas** | Implementar una política de contraseñas seguras para todos los usuarios. |
        | 16 | **Bloqueo_Root_Remoto** | Asegurar que el usuario root no pueda ser usado desde conexiones remotas. |
        | 17 | **Visitante** | Crea un rol Visitante que solo pueda ver la tabla productos. |
        | 18 | **Limite_Consultas_Analista** | Limitar el número de consultas por hora para el rol Analista_Datos para evitar sobrecarga. |
        | 19 | **Control_Sucursal_Ventas** | Asegurar que los usuarios solo puedan ver las ventas de la sucursal a la que pertenecen (requiere agregar id_sucursal). |
        | 20 | **Auditoria_Login** | Auditar todos los intentos de inicio de sesión fallidos en la base de datos. |

---

# 5. **`Triggers.sql`**
   - Este archivo crea la tabla de auditoría `log_cambios_precio`.
   - Contiene 20 triggers que permiten registrar cambios relevantes en las tablas principales del sistema.

     ##  Triggers Definidos en la Base de Datos

      Los siguientes **triggers** (disparadores) se han implementado para garantizar la integridad, consistencia y automatización de procesos dentro del sistema **Ecommerce_SQL** 🛍️.
      Cada uno ejecuta acciones automáticas ante eventos específicos en las tablas.

      | #  | Nombre del Trigger | Descripción |
      |----|--------------------|-------------|
      | 1  | `trg_audit_precio_producto_after_update` | Guarda un registro de cambios de precios. |
      | 2  | `trg_check_stock_before_insert_venta` | Verifica el stock antes de registrar una venta. |
      | 3  | `trg_update_stock_after_insert_venta` | Disminuye el stock después de una venta. |
      | 4  | `trg_prevent_delete_categoria_with_products` | Impide eliminar una categoría si tiene productos asociados. |
      | 5  | `trg_log_new_customer_after_insert` | Regístrese en una tabla de auditoría cada vez que se crea un nuevo cliente. |
      | 6  | `trg_update_total_gastado_cliente` | Actualiza un campo total_gastado en la tabla clientes después de cada compra. |
      | 7  | `trg_set_fecha_modificacion_producto` | Actualiza automáticamente la fecha de última modificación de un producto. |
      | 8  | `trg_prevent_negative_stock` | Impide que el stock de un producto se actualice a un valor negativo. |
      | 9  | `trg_capitalize_nombre_cliente` | Convierte a mayúscula la primera letra del nombre y apellido de un cliente al insertarlo. |
      | 10 | `trg_recalculate_total_venta_on_detalle_change` | Recalcula el total en la tabla ventas si se modifica un detalle_venta. |
      | 11 | `trg_log_order_status_change` | Audita cada cambio de estado en un pedido (ej. de 'Procesando' a 'Enviado'). |
      | 12 | `trg_prevent_price_zero_or_less` | Impide que el precio de un producto se establezca en cero o un valor negativo. |
      | 13 | `trg_send_stock_alert_on_low_stock` | Inserta un registro en una tabla de alertas si el stock baja de un umbral. |
      | 14 | `trg_archive_deleted_venta` | Mueve una venta eliminada a una tabla de archivo en lugar de borrarla permanentemente. |
      | 15 | `trg_validate_email_format_on_customer` | Valida el formato del correo electrónico antes de insertar o actualizar un cliente. |
      | 16 | `trg_update_last_order_date_customer` | Actualiza la fecha del último pedido en la tabla de clientes. |
      | 17 | `trg_prevent_self_referral` | Impide que un cliente se refiera a sí mismo en un programa de referidos. |
      | 18 | `trg_log_permission_changes` | Audita los cambios en los permisos de los usuarios. |
      | 19 | `trg_assign_default_category_on_null` | Asigna una categoría "General" si se inserta un producto sin categoría. |
      | 20 | `trg_update_producto_count_in_categoria` | Mantiene un contador de cuántos productos hay en cada categoría. |


# 6.  **`Eventos.sql`**
   - Crea la tabla `reporte_ventas_semanales` y el evento programado que genera reportes automáticos de ventas.
   - Incluye la activación del `event_scheduler`.

     ## Eventos Programados (EVENTS)

      Los siguientes **eventos programados** automatizan tareas de mantenimiento, análisis y limpieza de datos dentro de la base de datos **Ecommerce_SQL** .
      Cada uno se ejecuta en intervalos específicos definidos en el *Event Scheduler* de MySQL.

      | # |  Nombre del Evento |  Descripción |
      |---|----------------------|----------------|
      | 1  | `evt_generate_weekly_sales_report` | Genera un reporte de ventas semanal. |
      | 2  | `evt_cleanup_temp_tables_daily` | Borra tablas temporales diariamente. |
      | 3  | `evt_archive_old_logs_monthly` | Archiva logs de más de 6 meses en tablas históricas. |
      | 4  | `evt_deactivate_expired_promotions_hourly` | Desactiva códigos de descuento que han expirado. |
      | 5  | `evt_recalculate_customer_loyalty_tiers_nightly` | Recalcula el nivel de lealtad de los clientes cada noche. |
      | 6  | `evt_generate_reorder_list_daily` | Crea una lista de productos que necesitan ser reabastecidos. |
      | 7  | `evt_rebuild_indexes_weekly` | Reconstruye los índices de las tablas más usadas para optimizar el rendimiento. |
      | 8  | `evt_suspend_inactive_accounts_quarterly` | Desactiva cuentas de clientes sin actividad en más de un año. |
      | 9  | `evt_aggregate_daily_sales_data` | Agrega los datos de ventas del día en una tabla de resumen para acelerar reportes. |
      | 10 | `evt_check_data_consistency_nightly` | Busca inconsistencias en los datos (por ejemplo, ventas sin detalles). |
      | 11 | `evt_send_birthday_greetings_daily` | Genera una lista de clientes que cumplen años para enviarles un cupón. |
      | 12 | `evt_update_product_rankings_hourly` | Actualiza una tabla con el ranking de los productos más populares. |
      | 13 | `evt_backup_critical_tables_daily` | Realiza un respaldo lógico de las tablas más importantes cada noche. |
      | 14 | `evt_clear_abandoned_carts_daily` | Vacía los carritos de compra abandonados hace más de 72 horas. |
      | 15 | `evt_calculate_monthly_kpis` | Calcula los indicadores clave de rendimiento (KPIs) del mes y los guarda en una tabla. |
      | 16 | `evt_refresh_materialized_views_nightly` | Actualiza las vistas materializadas (si se usan). |
      | 17 | `evt_log_database_size_weekly` | Registra el tamaño de la base de datos para monitorear su crecimiento. |
      | 18 | `evt_detect_fraudulent_activity_hourly` | Busca patrones de actividad sospechosa (como múltiples pedidos fallidos). |
      | 19 | `evt_generate_supplier_performance_report_monthly` | Crea un reporte mensual sobre el rendimiento de los proveedores. |
      | 20 | `evt_purge_soft_deleted_records_weekly` | Elimina permanentemente los registros marcados para borrado hace más de 30 días. |


# 7. **`Procedimientos_Almacenados.sql`**
   - Contiene 20 procedimientos almacenados (`CREATE PROCEDURE`) que automatizan tareas recurrentes del negocio como actualizaciones, cálculos y reportes dinámicos.

     ##  Procedimientos Almacenados

      Los siguientes **procedimientos almacenados** encapsulan la lógica de negocio y automatizan operaciones complejas dentro del sistema **Ecommerce_SQL** .
      Permiten realizar tareas como registrar ventas, generar reportes, actualizar información o mantener la integridad de los datos de forma controlada y segura.

      | # |  Nombre del Procedimiento |  Descripción |
      |---|-----------------------------|----------------|
      | 1  | `sp_RealizarNuevaVenta` | Procesa una nueva venta de forma transaccional. |
      | 2  | `sp_AgregarNuevoProducto` | Inserta un nuevo producto y sus atributos iniciales. |
      | 3  | `sp_ActualizarDireccionCliente` | Actualiza la dirección de un cliente en todas las tablas relevantes. |
      | 4  | `sp_ProcesarDevolucion` | Gestiona la devolución de un producto, ajustando el stock y generando un crédito. |
      | 5  | `sp_ObtenerHistorialComprasCliente` | Devuelve el historial completo de compras de un cliente. |
      | 6  | `sp_AjustarNivelStock` | Permite ajustar manualmente el stock de un producto, registrando el motivo. |
      | 7  | `sp_EliminarClienteDeFormaSegura` | Anonimiza los datos de un cliente en lugar de borrarlos, manteniendo la integridad referencial. |
      | 8  | `sp_AplicarDescuentoPorCategoria` | Aplica un descuento a todos los productos de una categoría específica. |
      | 9  | `sp_GenerarReporteMensualVentas` | Genera un reporte completo de ventas para un mes y año determinados. |
      | 10 | `sp_CambiarEstadoPedido` | Cambia el estado de un pedido (ej. de 'Procesando' a 'Enviado') y notifica a otros sistemas. |
      | 11 | `sp_RegistrarNuevoCliente` | Registra un nuevo cliente validando que el correo electrónico no exista previamente. |
      | 12 | `sp_ObtenerDetallesProductoCompleto` | Devuelve toda la información de un producto, incluyendo datos del proveedor y su categoría. |
      | 13 | `sp_FusionarCuentasCliente` | Fusiona dos cuentas de cliente duplicadas en una sola. |
      | 14 | `sp_AsignarProductoAProveedor` | Asigna o cambia el proveedor de un producto. |
      | 15 | `sp_BuscarProductos` | Realiza una búsqueda avanzada de productos con filtros (nombre, categoría, precio, etc.). |
      | 16 | `sp_ObtenerDashboardAdmin` | Devuelve un conjunto de KPI para el panel administrativo (ventas diarias, nuevos clientes, etc.). |
      | 17 | `sp_ProcesarPago` | Simula el procesamiento de un pago y actualiza la venta a estado “Pagado”. |
      | 18 | `sp_AñadirReseñaProducto` | Permite a un cliente añadir una reseña y calificar un producto comprado. |
      | 19 | `sp_ObtenerProductosRelacionados` | Devuelve productos relacionados a uno dado, basándose en el comportamiento de otros clientes. |
      | 20 | `sp_MoverProductosEntreCategorias` | Mueve uno o más productos de una categoría a otra de forma segura. |





