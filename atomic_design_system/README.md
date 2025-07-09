# Sistema de Diseño en Flutter

Este repositorio implementa un Sistema de Diseño en Flutter basado en el enfoque Atomic Design, dividiendo la UI en niveles reutilizables como Átomos, Moléculas, Organismos y Plantillas.

## Principios de Diseño Atómico

- Átomos: Elementos mínimos como botones, texto, íconos, contenedores.
- Moléculas: Combinaciones simples como buscadores, cards simples, etc.
- Organismos: Secciones completas de UI como listas de productos o cabeceras.
- Plantillas: Layouts base reutilizables.
- Páginas: Uso específico de plantillas + organismos para componer pantallas completas.

## Plantillas Utilizadas

### `BasicTemplateLayout`

Una plantilla base que incluye un `AppBar`, `Body`, y `BottomNavigationBar`. Sirve para pantallas no scrollables o simples.

```dart
BasicTemplateLayout(
  appBar: AppBar(title: Text('Inicio')),
  body: MiContenido(),
  bottomNavigationBar: BottomNavigationBar(...),
)
```

### `ScrollableTemplate`

Plantilla optimizada para vistas con mucho contenido que requiere scroll. Incluye `AppBar` y un `body` con `SingleChildScrollView`.

```dart
ScrollableTemplate(
  appBar: AppBar(title: Text('Detalle')),
  body: Column(...),
)
```

## Páginas Incluidas

### `home_page.dart`
Pantalla principal que muestra productos destacados. Usa `BasicTemplateLayout`.

### `product_detail_page.dart`
Pantalla con scroll que muestra detalles del producto. Usa `ScrollableTemplate`.

### `search_page.dart`
Pantalla con campo de búsqueda y resultados. Usa `ScrollableTemplate`.

## Componentes Reutilizables

Puedes seguir agregando componentes reutilizables en las carpetas `atoms`, `molecules` y `organisms` para mantener el diseño consistente y escalable.

## Cómo usar

1. Clonar el repositorio https://github.com/Marisolperez22/atomic_desing_system.git.
2. Agregar más componentes reutilizables siguiendo el enfoque atómico.
3. Usar las plantillas para construir nuevas páginas.

```bash
flutter pub get
flutter run
```

## Cómo Ejecutar el Showcase

Requisitos Previos
Flutter SDK 3.19.0 o superior

Dependencias del sistema de diseño instaladas

Clona el repositorio (si es externo):

bash
git clone https://github.com/Marisolperez22/atomic-design-showcase.git
cd atomic-design-showcase

Pantallas Disponibles

/atoms
/molecules 
/organisms
/templates
/pages

 ### Navegación en el Showcase
El showcase usa un sistema de rutas nombradas:

dart
// Ejemplo de navegación entre pantallas
MainCard(
  onPressed: () => Navigator.pushNamed(context, ShowcaseRoutes.molecules),
)
Rutas Configuradas
Ver archivo: lib/config/routes/showcase_routes.dart




##  Autor

Desarrollado por Marisol Perez.


