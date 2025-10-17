# Thundnix

Thundernix es una aplicación móvil desarrollada con Flutter, siguiendo una arquitectura limpia y modular que facilita la escalabilidad y el mantenimiento del código.

## Estructura del Proyecto

El proyecto está organizado en varios directorios principales dentro de la carpeta `lib`, cada uno con una responsabilidad específica:

```
lib/
├── app/
│   ├── theme/
│   │   ├── dark_theme.dart
│   │   └── light_theme.dart
│   ├── app.dart
│   └── router.dart
├── core/
│   └── widgets/
├── features/
│   ├── admin/
│   ├── auth/
│   └── worker/
└── main.dart
```

### `lib/main.dart`

Este es el punto de entrada de la aplicación. Su única responsabilidad es iniciar la aplicación Flutter ejecutando el widget principal `MyApp`.

### `lib/app/`

Este directorio contiene la configuración central de la aplicación.

*   **`app.dart`**: Define el widget `MyApp`, que es el widget raíz de la aplicación. Aquí se configuran el `MaterialApp.router`, los temas (claro y oscuro), la internacionalización (i18n) y el sistema de rutas.
*   **`router.dart`**: Gestiona la navegación de la aplicación utilizando el paquete `go_router`. Define todas las rutas, transiciones y parámetros de navegación.
*   **`theme/`**: Contiene los archivos para definir los estilos visuales de la aplicación.
    *   `light_theme.dart`: Define el tema para el modo claro.
    *   `dark_theme.dart`: Define el tema para el modo oscuro.

### `lib/core/`

Este directorio está destinado a albergar código que es compartido por múltiples `features` (características). Esto puede incluir widgets personalizados (`widgets/`), utilidades, constantes, modelos de datos comunes, etc. El objetivo es evitar la duplicación de código y mantener una base de código coherente.

### `lib/features/`

Esta es la parte más importante de la arquitectura. Cada subdirectorio dentro de `features` representa una funcionalidad o módulo específico de la aplicación (por ejemplo, `auth` para autenticación, `admin` para el panel de administración, etc.).

Esta separación permite que cada característica sea desarrollada de forma aislada, con sus propias pantallas, lógica de negocio y estado. Esto hace que el código sea más fácil de entender, probar y mantener.

## Clases Principales

*   **`MyApp` (`lib/app/app.dart`)**: El widget principal que configura el entorno de la aplicación, incluyendo el enrutador, los temas y la localización.
*   **`buildRouter()` (`lib/app/router.dart`)**: Función que construye y configura las rutas de la aplicación usando `GoRouter`.

## Cómo Empezar

Para ejecutar este proyecto, asegúrate de tener Flutter instalado y sigue estos pasos:

1.  Clona el repositorio:
    ```sh
    git clone <URL_DEL_REPOSITORIO>
    ```
2.  Instala las dependencias:
    ```sh
    flutter pub get
    ```
3.  Ejecuta la aplicación:
    ```sh
    flutter run
    ```

## Recursos Adicionales

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

Para obtener ayuda sobre el desarrollo con Flutter, consulta la [documentación en línea](https://docs.flutter.dev/), que ofrece tutoriales, ejemplos, guías sobre desarrollo móvil y una referencia completa de la API.
