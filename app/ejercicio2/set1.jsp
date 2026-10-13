<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="texto" value="JSTL"/><c:set var="valor" value="${10+5}"/>
<!DOCTYPE html><html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>Ejercicio 2</title><link rel="stylesheet" href="../css/estilo.css"></head><body><div class="topbar"><div class="topbar-inner"><div class="logo">JSTL</div><a class="home-link" href="index.jsp">Atrás</a></div></div><main class="main"><div class="content-card narrow"><div class="info-box"><p><strong><c:out value="${texto}"/></strong></p><p><c:out value="${valor}"/></p></div></div></main><footer class="footer">GuiajstlEdwing</footer></body></html>
