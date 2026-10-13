#!/bin/sh
set -eu

# Railway provides PORT dynamically. Tomcat has a static HTTP port by default.
PORT="${PORT:-8080}"
case "$PORT" in
  ''|*[!0-9]*) echo "Invalid PORT: $PORT" >&2; exit 1 ;;
esac

sed -i "s|port=\"8080\" protocol=\"HTTP/1.1\"|port=\"${PORT}\" protocol=\"HTTP/1.1\"|" "${CATALINA_HOME}/conf/server.xml"
exec catalina.sh run
