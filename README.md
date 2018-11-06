# Taller de introducción a R y al manejo de archivos tabulares y raster.

Este taller ha sido armado por mi persona, [Eduardo Noriega](https://twitter.com/norteaga), como parte de la trasferencia de información sobre lo aprendido en la elaboración de mi proyecto de grado para la obtención del título de Ingeniero Civil por parte de la Universidad Mayor de San Andrés.
Este taller se llevara a cabo en las instalaciones del Instituto de Hidráulica e Hidrología (IHH) en fecha .....

# Descripción de R y RStudio
Este taller está dirigido a personas con ánimos de aprender una herramienta para manipulación de información y manipular archivos de diferentes características en un mismo entorno (archivos excel, raster entre otros).

R es un lenguaje de programación libre que se sustenta y expande gracias a una comunidad de usurarios alrededor del mundo. R permite no solo el tratamiento y obtención de resultados estadísticos sino que gracias a `paquetes` creados por sus usuarios ha permitido expandir su uso a diversas ramas profesionales (geografía, biología, ingeniería, sociología, medicina, etc) permitiendo agregar nuevas funciones que en muchos casos son útiles entre diferentes áreas de trabajo.

En este taller se usó RStudio que es un Entorno de Desarrollo Integrado (IDE por sus siglas en inglés) para R. En RStudio se facilita la escritura de código y la visualización del mismo.

# Sobre el curso
Se planeó realizar un curso de introducción a R y al manejo de información tabular y raster orientado a informacion hidrológica para poder mostrar las ventajas e inconvenientes del lenguaje de programación.

# Requerimientos
Es necesario tener instalado lo siguiente:
- [R](https://cloud.r-project.org/) : La última versión a la fecha (noviembre 2018) es 3.5.1. Se recomienda instalar la última versión o al menos mayor a la versión 3.0.0 (>3.0.0).
- [RStudio](https://www.rstudio.com/products/rstudio/download/#download) : La ultima versión a la fecha (noviembre 2018) es 1.1.463. Se recomienda tener la última versión estable (no *preview*) o al menos mayor a la versión 1.0.0 (>1.0.0).
- Como habíamos mencionado antes, R se basa en paquetes para expandir sus capacidades. Los paquetes que se usaron en el taller son:
- `raster` [info](https://cran.r-project.org/package=raster) Manejo de archivos raster en general.
- `ncdf4` [info](https://cran.r-project.org/package=ncdf4) Manejo de archivos NetCDF.
- `openxls` [info](https://cran.r-project.org/package=openxlsx) Manejo de archivos xlsx.
- `lubridate` [info](https://cran.r-project.org/package=lubridate) Manejo de objetos de tipo fecha (Date).

# Alcance
Se elaboró el taller pensando en mostrar el conocimiento necesario para poder manipular información tabular (xlsx y csv) e información espacial (en este caso archivos grillados raster tif y NetCDF).

# Programa
El taller se dividió en 2 partes:
1. Introducción a R y RStudio
- Instalación de R y RStudio
- Tipos de objetos
- Lectura de archivos tabulares
- Operaciones con información tabular
- Guardar salidas
- Funciones
2. Manejo básico de información raster
- Cargar archivos raster
- Visualizar archivos raster
- Extracción de valores raster

# Tareas pendientes
Como se describió en la sección de **Alcance**, este taller solo muestra una pequeña parte del potencial de R. Algunas capacidades de R útiles para aplicaciones hidrologicas pueden ser:
- Generación de reportes de resultados en mapas temáticos (raster o vectoriales) y generación de informes finales (word, pdf y html).
 - Manejo de información de series temporales con solvencia. Existen paquetes que permiten trabajar con infomración de series temporales como un tipo especial de objetos dentro de R.
- Realizar tratamientos geoestadísticos (interpolaciones Kriging, bayesianas, Suavizado Doble Kernel, etc.) 
- Manipulación de información tabular o raster por lotes (empleando funciones para automatizar los procesos requeridos).


