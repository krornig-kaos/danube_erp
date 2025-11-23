# 1.6 Documentar Decisiones - MVP ERP Microkernel

## 1. Arquitectura

- Se adopta una arquitectura microkernel para máxima extensibilidad y mantenibilidad.
- El núcleo solo incluye autenticación, autorización, gestión de usuarios/roles, multi-tenancy jerárquico, carga de plugins y contratos/interfaces.
- Todas las funcionalidades de negocio se implementan como plugins/módulos desacoplados.

## 2. Multi-tenancy

- Se implementa multi-tenancy jerárquico desde el inicio (soporte para sub-tenants/sucursales).
- Se utiliza un esquema compartido en la base de datos, con campos `tenant_id` y `parent_id` para jerarquía.
- No se usan librerías externas para multi-tenancy; la lógica se implementa en el núcleo.

## 3. Plugins

- Los módulos funcionales (ventas, compras, contactos, productos, reportes, dashboard, etc.) se implementan como plugins.
- Los plugins se cargan dinámicamente usando las capacidades estándar de Elixir.

## 4. Tecnologías

- Backend: Elixir + Phoenix + Ecto.
- Frontend: Phoenix LiveView (SPA opcional).
- Base de datos: PostgreSQL.
- CI/CD: GitHub Actions.
- Contenedores: Docker.

## 5. Seguridad y calidad

- Autenticación robusta con phx_gen_auth.
- Autorización basada en roles con Bodyguard.
- Pruebas con ExUnit, formateo con mix format y linting con credo.

## 6. Internacionalización

- Soporte para español e inglés usando Gettext.

## 7. Documentación

- Todas las decisiones y cambios relevantes se documentan en esta carpeta para referencia futura.
