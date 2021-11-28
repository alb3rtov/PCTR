# PCTR
## Problema
Escriba en lenguaje ADA un programa que simule el comportamiento de la solución del
problema de los caníbales comensales discutido en las actividades de teoría de la asignatura.
El contexto de este problema se sitúa en el escenario en el que los caníbales de una tribu
de caníbales se pasan todo el tiempo comiendo y bailando. Para comer tienen que recoger su
ración de comida de una misma olla, que puede albergar un máximo de N (defínalo como
valor constante) raciones de comida. Cuando un caníbal quiere comer, tiene que servirse, de
forma exclusiva, una ración de la olla común.

En caso de que la olla esté vacía y no contenga ninguna ración, se debe avisar al cocinero
de la tribu y esperar hasta que éste rellene la olla con N raciones nuevas. La actividad de
bailar es una actividad que se desarrolla en un tiempo aleatorio cada vez. El cocinero, cuando
no tiene que rellenar la olla, dedica su tiempo a dormir y esperar que sea requerido.

Para la implementación, cada caníbal será una tarea y el cocinero será otra tarea. Por últi -
mo, la olla debe ser implementada como un objeto compartido. Debe valorar la necesidad de
utilizar algún tipo de semáforo y, en caso de ser necesario, puede reutilizar el código del
ejercicio 4 en el que se pedía la implementación de un semáforo mediante objetos protegidos.

## Compilar y ejecutar
Es necesario tener el compilador `gnatmake` instalado en el sistema.

Para compilar el programa utiliza `make` y para ejecutarlo utiliza `make test`

Para eliminar archivos compilados utiliza `make clean`
