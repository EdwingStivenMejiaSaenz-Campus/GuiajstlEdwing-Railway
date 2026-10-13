# GuiajstlEdwing — JSP/JSTL en Railway

Proyecto académico con ocho ejercicios JSP/JSTL, listo para desplegar en Railway utilizando Apache Tomcat 9 y Docker.

## Despliegue

1. En [Railway](https://railway.com/) elige **New Project** → **Deploy from GitHub repo**.
2. Selecciona este repositorio. Railway detectará el `Dockerfile`.
3. En **Settings** → **Networking**, elige **Generate Domain**.
4. Abre tu dominio para ver los ocho ejercicios.

La base de datos del ejercicio 8 es en memoria: los registros no persisten después de reiniciar el servidor.
