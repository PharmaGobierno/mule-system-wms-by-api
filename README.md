# mule-system-wms-by-api

## 📌 Descripción
La **mule-system-wms-by-api** es una **System API** que actúa como la capa de acceso directo a **WMS Blue Yonder**. Su función principal es abstraer la complejidad técnica del sistema de gestión de almacenes, ofreciendo una interfaz simplificada para interactuar con su base de datos y servicios.

Esta API es fundamental para las operaciones logísticas de clientes como **ISSSTE, IMSS, MEGA y PINSA**, y proporciona la base para la gestión de inventario, órdenes de pedido y la trazabilidad de los bienes en el almacén.

---

## ⚙️ Operaciones

### 🔹 Gestión de Inventario
* `GET /wms/availability`
    * Consulta la disponibilidad de productos.
* `POST /wms/inventory`
    * Actualiza y gestiona los niveles de inventario.
* `GET /wms/bill_lading_details`
    * Obtiene los detalles de la carta de porte.

### 🔹 Administración de Órdenes
* `POST /wms/order`
    * Permite la creación de nuevas órdenes de pedido en el sistema.
* `GET /wms/order/{lodnum}/box`
    * Consulta los detalles de las cajas asociadas a una orden específica.
* `POST /wms/order/split`
    * Permite dividir una orden en múltiples envíos.

### 🔹 Operaciones de Almacén
* `POST /wms/volumetry`
    * Maneja la información de volumetría de los productos.
* `POST /wms/box_quantity`
    * Gestiona la cantidad de productos por caja.
* `POST /wms/box`
    * Procesa la información relacionada con el empaquetado de las cajas.

---

## 🏢 Sistemas Integrados
-   **WMS Blue Yonder:** Es el sistema de registro para la administración de almacenes. Esta API se conecta directamente a sus servicios y base de datos para todas las operaciones.

---

## 🔗 Dependencias
Esta API no consume otras APIs de MuleSoft. Su propósito es ser un conector directo al sistema WMS.

---

## 👥 Consumidores
Los principales consumidores de esta API son las APIs de proceso, como la **process-pharma-api**, la **process-albatros-api** y la **process-customer-api**, que utilizan esta capa para orquestar flujos de negocio complejos relacionados con la logística y el inventario.

---

## ⏱️ Procesos Programados
Actualmente no existen procesos programados.
**NA: Not Applicable.**

---

## 📖 Notas
-   Esta API es la capa de sistema dentro del modelo de **API-led Connectivity de MuleSoft**.
-   Proporciona una interfaz estandarizada y segura para interactuar con un sistema de registro.
