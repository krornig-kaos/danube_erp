# 1.3 Módulos Principales - MVP ERP Microkernel

## Núcleo

- Autenticación y autorización
- Gestión de usuarios y roles
- Gestión de multi-tenancy con jerarquía de tenants (organizaciones, sub-tenants, sucursales, filiales)
  - Crear, editar y eliminar tenants y sub-tenants
  - Asociar usuarios a un tenant o sub-tenant específico
  - Permitir jerarquía de tenants (estructura en árbol)
  - Garantizar el aislamiento de datos entre tenants y sub-tenants
  - Proveer mecanismos para que los plugins accedan al contexto del tenant/sub-tenant actual
  - Permitir que los administradores gestionen solo los datos de su organización o sub-organización
- Carga y gestión de plugins/módulos
- API base y contratos/interfaces para plugins

## Plugins/Módulos Funcionales

- Gestión de contactos (clientes y proveedores)
- Catálogo de productos/servicios
- Ventas
- Compras
- Reportes
- Dashboard
- Configuración/Parámetros del sistema
- Auditoría/Historial de cambios
- Notificaciones
