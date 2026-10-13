<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html><html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>Ejercicio 1</title><link rel="stylesheet" href="../css/estilo.css"></head>
<body>
<div class="topbar"><div class="topbar-inner"><div class="logo">JSTL</div><a class="home-link" href="../index.jsp">Inicio</a></div></div>
<section class="exercise-hero ex1"><div class="hero-copy"><h1>EJERCICIO 1</h1><p>Impresión de datos a partir de comando c:out JSTL</p></div></section>
<main class="main"><div class="library-strip ex1">LIBRERÍA CORE</div><div class="modal-card"><div class="modal-head"><strong>Primer ejemplo con JSTL</strong><a class="back-x" href="../index.jsp">×</a></div><div class="modal-body"><p>Cadena de caracteres: <strong><c:out value="1+2+3"/></strong></p><p>Suma de valores: <strong><c:out value="${1+2+3}"/></strong></p></div></div></main>
<footer class="footer">GuiajstlEdwing</footer></body></html>
