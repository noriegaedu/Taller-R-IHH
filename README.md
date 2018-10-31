# Taller R
Taller de introduccion a R y al manejo de archivos raster de precipitacion.

Este taller ha sido armado por mi persona [Eduardo Noriega](https://twitter.com/norteaga) como parte de la trasnferencia de informacion sobre o aprendido en mi tesis para la obtencion del titulo de Ingeniero Civil por parte de la Universidad Mayor de San Andres.
Este taller se llevara a cabo en las instalaciones del Instituto de Hidraulica e Hidrologia (IHH) en fecha .....

# Descripcion de R y RStudio
Este taller esta dirigido a personas con animos de aprender una herramienta para manipualcion de informacion y poder obtener resultados de modelos, manipular archivos de diferentes caracteriticas en un mismo entorno (archivos excel, raster y otros).

R es un lenguaje de programacion libre que se sustenta y se expande en sus funciones gracias a una comunidad de usurarios alrededor del mundo. R permite no solo el tratamiento y obtencion de resultados estadsiticos sino que gracias a 'paquetes' creados por sus usuarios ha permitido expandir su uso a diversas ramas profesionales (geografia, biologia, ingenieria, sociologia, medicina, etc) permitiendo agregar nuevas funciones que en muchos casos son utiles entre diferentes areas de trabajo.

En este taller se usara RStudio que es un Entorno de Desarrollo Integrado (IDE por sus siglas en ingles) para R. En RStudio se facilita la escritura de codigo y la visualizacion del mismo.

# Sobre el curso
Se planeo realizar un curso de introduccion a R y al manejo de informacion tabular y raster para poder mostrar las ventajas e inconvenientes del lenguaje de programacion.

# Requerimientos
Es necesario tener instalado los siguientes programas:
- [R](https://cloud.r-project.org/) : La ultima version a la fecha (novimebre 2018) es 3.5.1. Se recomienda instalar la ultima version o al menos mayor a la version 3.0.0 (>3.0.0).
- [RStudio](https://www.rstudio.com/products/rstudio/download/#download) : La ultima version a la fecha (noviembre 2018) es 1.1.463. Se recomienda tener la ultima version estable (no *preview*) o al menos mayor a la version 1.0.0 (>1.0.0).
- Como habiamos mencionado antes, R se basa en paquetes para expandir sus capacidades. Los paquetes que se usaron en el taller son:
- `raster` [info](https://cran.r-project.org/package=raster)
- `openxls` [info](https://cran.r-project.org/package=openxlsx)

# Alcance
Se elaboro el taller pensando en mostrar el conocimiento necesario para poder manipular informacion tabular (xlsx y csv) e infomracion espacial (en este caso archivos grillados raster tif y nc).

# Programa
El taller se dividira en 2 partes:
1. Introduccion a R y RStudio
- Instalacion de R y RStudio
- Tipos de objetos
- Lectura de archivos tabulares
- Operaciones con informacion tabular
- Guardar salidas
- Funciones
2. Manejo de informacion raster
- Cargar archivos raster
- Visualizar archivos raster
- Extraccion de valores raster

# Tareas pendientes
Como se menciono en la seccion de Alcance, este taller solo muestra una pequeña parte del potencial de R. Algunas capacidades de R utiles para la hidrologia se obervan en el reporte de resultados en mapas tematicos (raster o vectoriales), realizar tratatientos geoestadisticos (interpolaciones Kriging, bayesianas, Suavizado Doble Kernel, etc.) e inlcuso la manipulacion de informacion tabular o raster por lotes (empleando funciones para automatizar los procesos requeridos).


