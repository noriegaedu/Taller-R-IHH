# Taller R
Taller de introducción a R y al manejo de archivos raster de precipitación.

Este taller ha sido armado por mi persona [Eduardo Noriega](https://twitter.com/norteaga) como parte de la trasferencia de información sobre o aprendido en mi tesis para la obtención del título de Ingeniero Civil por parte de la Universidad Mayor de San Andrés.
Este taller se llevara a cabo en las instalaciones del Instituto de Hidráulica e Hidrología (IHH) en fecha .....

# Descripción de R y RStudio
Este taller está dirigido a personas con ánimos de aprender una herramienta para manipulación de información y poder obtener resultados de modelos, manipular archivos de diferentes características en un mismo entorno (archivos excel, raster y otros).

R es un lenguaje de programación libre que se sustenta y se expande en sus funciones gracias a una comunidad de usurarios alrededor del mundo. R permite no solo el tratamiento y obtención de resultados estadísticos sino que gracias a 'paquetes' creados por sus usuarios ha permitido expandir su uso a diversas ramas profesionales (geografía, biología, ingeniería, sociología, medicina, etc) permitiendo agregar nuevas funciones que en muchos casos son útiles entre diferentes áreas de trabajo.

En este taller se usara RStudio que es un Entorno de Desarrollo Integrado (IDE por sus siglas en ingles) para R. En RStudio se facilita la escritura de código y la visualización del mismo.

# Sobre el curso
Se planeó realizar un curso de introducción a R y al manejo de información tabular y raster para poder mostrar las ventajas e inconvenientes del lenguaje de programación.

# Requerimientos
Es necesario tener instalado los siguientes programas:
- [R](https://cloud.r-project.org/) : La ultima versión a la fecha (noviembre 2018) es 3.5.1. Se recomienda instalar la última versión o al menos mayor a la versión 3.0.0 (>3.0.0).
- [RStudio](https://www.rstudio.com/products/rstudio/download/#download) : La ultima versión a la fecha (noviembre 2018) es 1.1.463. Se recomienda tener la última versión estable (no *preview*) o al menos mayor a la versión 1.0.0 (>1.0.0).
- Como habíamos mencionado antes, R se basa en paquetes para expandir sus capacidades. Los paquetes que se usaron en el taller son:
- `raster` [info](https://cran.r-project.org/package=raster)
- `openxls` [info](https://cran.r-project.org/package=openxlsx)

# Alcance
Se elaboró el taller pensando en mostrar el conocimiento necesario para poder manipular información tabular (xlsx y csv) e información espacial (en este caso archivos grillados raster tif y nc).

# Programa
El taller se dividirá en 2 partes:
1. Introducción a R y RStudio
- Instalación de R y RStudio
- Tipos de objetos
- Lectura de archivos tabulares
- Operaciones con información tabular
- Guardar salidas
- Funciones
2. Manejo de información raster
- Cargar archivos raster
- Visualizar archivos raster
- Extracción de valores raster

# Tareas pendientes
Como se mencionó en la sección de Alcance, este taller solo muestra una pequeña parte del potencial de R. Algunas capacidades de R útiles para la hidrología se encuentran en el reporte de resultados en mapas temáticos (raster o vectoriales), realizar tratamientos geoestadísticos (interpolaciones Kriging, bayesianas, Suavizado Doble Kernel, etc.) e incluso la manipulación de información tabular o raster por lotes (empleando funciones para automatizar los procesos requeridos).


