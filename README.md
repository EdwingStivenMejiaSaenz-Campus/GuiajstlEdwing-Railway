# GuiajstlEdwing — JSP / JSTL (Railway)

Proyecto académico con 8 ejercicios JSP/JSTL. Está preparado para desplegarse en Railway usando Apache Tomcat 9 y Docker. No necesita Maven ni Gradle.

## Subir a GitHub

1. Crear un repositorio GitHub nuevo llamado `GuiajstlEdwing-Railway`.
2. Subir **el contenido de esta carpeta** a la raíz del repositorio: `app/`, `Dockerfile`, `start.sh`, `.dockerignore`, `.gitignore` y `README.md`.
3. Confirmar los archivos en la rama `main`.

## Desplegar en Railway

1. Entrar a <https://railway.com/> con tu cuenta.
2. **New Project** → **Deploy from GitHub repo** → elegir `GuiajstlEdwing-Railway`.
3. Railway detecta `Dockerfile` automáticamente. No configurar build command ni start command.
4. Cuando el despliegue termine, entrar a **Settings** → **Networking** → **Generate Domain**.
5. Abrir la URL generada. Debe mostrar la portada con 8 ejercicios.

Tomcat escucha en `PORT` (variable suministrada por Railway); si falta, usa 8080. Para ejecutar localmente: `docker build -t guiajstl . && docker run --rm -p 8080:8080 guiajstl`; abrir <http://localhost:8080/>.

## Sobre la base de datos

El ejercicio 8 usa el controlador `com.guiajstl.db.MemoryDriver`, incluido en `WEB-INF/lib/guiajstl-db.jar`. **La información queda en memoria** y se pierde al reiniciar o redesplegar la aplicación. El archivo `app/database/empleados.sql` es solo una referencia. No está configurada una base de datos SQL externa.

## Notas de compatibilidad

Se utiliza Tomcat **9** (Servlet API `javax.*`), compatible con el `web.xml` versión 3.1 y las librerías JSTL proporcionadas. No migrar directamente a Tomcat 10+ sin adaptar las dependencias `javax.*` a `jakarta.*`.
