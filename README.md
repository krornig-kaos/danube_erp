# Danube ERP

ERP modular basado en arquitectura microkernel, con soporte para multi-tenancy jerárquico y plugins dinámicos.

## Requisitos previos

- Elixir >= 1.15
- Erlang/OTP >= 26
- Node.js >= 18
- PostgreSQL >= 13

## Instalación

1. Clona el repositorio:

   ```sh
   git clone https://github.com/krornig-kaos/danube_erp.git
   cd danube_erp
   ```

2. Instala las dependencias:

   ```sh
   mix deps.get
   ```

3. Instala las dependencias de Node.js:

   ```sh
   cd assets && npm install && cd ..
   ```

4. Configura la base de datos en `config/dev.exs` y crea la base:

   ```sh
   mix ecto.setup
   ```

5. Inicia el servidor:
   ```sh
   mix phx.server
   ```

## Estructura del proyecto

- `lib/danube_erp/` — Núcleo del sistema
- `lib/plugins/` — Plugins/módulos funcionales
- `docs/` — Documentación y análisis

## Documentación

Consulta la carpeta `docs/fase_1/` para detalles de arquitectura, módulos y decisiones.
