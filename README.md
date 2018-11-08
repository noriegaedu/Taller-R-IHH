# Taller de introducción a R y al manejo básico de archivos tabulares y raster.

Este taller ha sido armado por mi persona, [Eduardo Noriega](https://twitter.com/norteaga), como parte de la trasferencia de información sobre lo aprendido en la elaboración de mi proyecto de grado para la obtención del título de Ingeniero Civil por parte de la Universidad Mayor de San Andrés.
Este taller se llevara a cabo en las instalaciones del Instituto de Hidráulica e Hidrología (IHH) en noviembre de 2018.

# Fecha de realización
La primera sesion esta ptrogramada para el dia Lunes 12 de noviembre a las 9AM en la sala de reuniones de IHH. En esta primera sesión se cubrirá la primera parte del programa definido y se determinará la fecha para la segunda sesión.

# Descripción de R y RStudio
Este taller está dirigido a personas con ánimos de aprender una herramienta para manipulación de información y manipular archivos de diferentes características en un mismo entorno (archivos excel, raster entre otros).

R es un lenguaje de programación libre que se sustenta y expande gracias a una comunidad de usurarios alrededor del mundo. R permite no solo el tratamiento y obtención de resultados estadísticos sino que gracias a `paquetes` creados por sus usuarios ha permitido expandir su uso a diversas ramas profesionales (geografía, biología, ingeniería, sociología, medicina, etc) permitiendo agregar nuevas funciones que en muchos casos son útiles entre diferentes áreas de trabajo.

En este taller se usó RStudio que es un Entorno de Desarrollo Integrado (IDE por sus siglas en inglés) para R. En RStudio se facilita la escritura de código y la visualización del mismo.

# Motivaciones del taller
Al finalizar la elaboración de mi proyecto de grado, mi tutor y algunos docentes del Instituto de Hidráulica e Hidrología (IHH) de la Universidad Mayor de San Andrés (UMSA) me sugirieron preparar un curso básico para mostrar las ventajas y alcances del lenguaje de programación R.  

Si bien aún no domino muchos aspectos de esta herramienta, si me emocionó la idea de compartir algo de lo que aprendí (compartir todo sería tan largo y a la vez tan confuso, tengo muchos pedazos de código en desorden). Es así que arme este curso como un primer paso hacia metas mayores si es que el tiempo y el interés que pueda generarse lo permite.  

Me encantaría poder mostrar las capacidades que tiene esta herramienta para generar mapas, gráficos de calidad e incluso reportes y presentaciones (las diapositivas de este curso fueron generadas con **RMarkdown** dentro de R).  

Por ahora el principal objetivo es el de realizar un curso de introducción a R y al manejo básico de información tabular y raster orientado a informacion hidrológica.

# Requerimientos
Es necesario tener instalado lo siguiente:
- [R](https://cloud.r-project.org/) : La última versión a la fecha (noviembre 2018) es 3.5.1. Se recomienda instalar la última versión o al menos mayor a la versión 3.0.0 (>3.0.0).
- [RStudio](https://www.rstudio.com/products/rstudio/download/#download) : La ultima versión a la fecha (noviembre 2018) es 1.1.463. Se recomienda tener la última versión estable (no *preview*) o al menos mayor a la versión 1.0.0 (>1.0.0).
- Como habíamos mencionado antes, R se basa en paquetes para expandir sus capacidades. Los paquetes que se usaron en el taller son:
- `raster` [info](https://cran.r-project.org/package=raster) Manejo de archivos raster en general.
- `ncdf4` [info](https://cran.r-project.org/package=ncdf4) Manejo de archivos NetCDF.
- `openxlsx` [info](https://cran.r-project.org/package=openxlsx) Manejo de archivos xlsx.
- `lubridate` [info](https://cran.r-project.org/package=lubridate) Manejo de objetos de tipo fecha (Date).

**OJO**
En caso de tener porblemas para la instalación de R, RStudio o de las librerías escríbanme a mi [correo](eduardonoriegac@gmail.com) o por [Telegram](https://t.me/norteaga).


# Alcance
Este es un curso básico de manipualción de información tabular (csv, xlsx) y raster (tif, nc). Se pretende mostrar las capacidades de automatizacion de esta herramienta para tareas repetitivas y las posibilidades del lenguaje de programación.

# Programa
El taller se dividió en 2 partes:
1. Introducción a R y RStudio
- Descarga de R y RStudio
- Proyectos en R
- Librerías
- Tipos de objetos
- Manipulación de información tabular
2. Manejo básico de información raster
- Paquetes para infomracion grillada (raster)
- Visualizar archivos raster
- Extracción de valores raster

# Tareas pendientes
Como se describió en la sección de los **Motivos del taller**, este taller solo muestra una pequeña parte del potencial de R. Algunas capacidades de R útiles para aplicaciones hidrologicas pueden ser:
- Generación de reportes de resultados en mapas temáticos (raster o vectoriales) y generación de informes finales (word, pdf y html).
 - Manejo de información de series temporales con solvencia. Existen paquetes que permiten trabajar con infomración de series temporales como un tipo especial de objetos dentro de R.
- Realizar tratamientos geoestadísticos (interpolaciones Kriging, bayesianas, Suavizado Doble Kernel, etc.) 
- Manipulación de información tabular o raster por lotes (empleando funciones para automatizar los procesos requeridos).
- Aplicar tratamientos estadísticos, aplicar modelos estadísticos, realizar pruebas estadísticas, etc. a conjuntos de datos.


