# TODO

##### Implementar split de audios largos (chunks) para analizar audios largos
El espectrograma generado contiene poco espacio entre los bloques amarillos, por lo cual la detección de frecuencias no funciona correctamente al codificar mensajes largos.

##### Optimizar encoding 
- Utilizar cp en lugar de generar los tonos con ffmpeg para tonos que ya existan. O en su defecto usar la xarpeta de tonos/ para copiarlos.

##### Crear script de install.sh

##### Incluir Play en modos de operacion

##### Incluir Verbose en argumentos

##### Eliminar mensajes de Debug

##### Manejo de errores

##### Añadir scripts de testing

##### Testear ultrasonidos (implementar)

##### Mezclar con .wav existentes
Quizas necesario eliminar primero las frecuencias exactas ya existentes.  
Posiblemente necesario cambiar el modo de detección para evitar falsos positivos. (Utilizar el ancho de tono en los cálculos)

##### Testear mp3
Posiblemente no funciona por la compresión

##### Reducir al tamaño mínimo posible la duración de los tonos
