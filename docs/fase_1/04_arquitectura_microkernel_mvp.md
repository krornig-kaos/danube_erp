# 1.4 Arquitectura Microkernel

## Núcleo

- Provee servicios esenciales: autenticación, autorización, gestión de usuarios y roles, multi-tenancy jerárquico, carga de plugins y contratos/interfaces.
- Gestiona la carga dinámica y el ciclo de vida de los plugins.

## Plugins/Módulos

- Cada módulo funcional se implementa como un plugin desacoplado.
- Los plugins se comunican con el núcleo a través de interfaces definidas.
- Los plugins pueden ser activados/desactivados sin afectar el núcleo.

## Diagrama conceptual (descripción)

- El núcleo es el centro del sistema.
- Los módulos/plugins se conectan al núcleo mediante interfaces.
- El frontend consume los servicios del núcleo y de los plugins a través de APIs.
