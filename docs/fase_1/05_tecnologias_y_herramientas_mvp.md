# 1.5 Tecnologías y Herramientas - MVP ERP Microkernel

## Backend

- **Lenguaje:** Elixir
- **Framework:** Phoenix
- **ORM:** Ecto
- **Autenticación:** phx_gen_auth
- **Autorización:** Bodyguard (o similar)
- **Gestión de multi-tenancy:** Implementación propia en el núcleo, usando esquema compartido con campos `tenant_id` y `parent_id` para jerarquía.
- **Carga dinámica de plugins:** Módulos estándar de Elixir (`Code.compile_file/1`)

## Frontend

- **Framework:** Phoenix LiveView (integrado)
- **Alternativa:** SPA con React o Vue.js (opcional)

## Base de datos

- **Motor:** PostgreSQL
- **Multi-tenancy:** Esquema compartido con campo tenant_id y soporte para jerarquía (parent_id)

## Infraestructura

- **Contenedores:** Docker
- **CI/CD:** GitHub Actions
- **Despliegue:** Soporte para SaaS y on-premise

## Herramientas de desarrollo

- **Gestión de dependencias:** Mix
- **Formateo y linting:** mix format, credo
- **Pruebas:** ExUnit

## Otros

- **Internacionalización:** Gettext
- **Manejo de fechas:** Timex
