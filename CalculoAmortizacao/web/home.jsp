<%-- 
    Document   : Home
    Created on : 01/09/2019, 11:14:29
    Author     : MORDOR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/style.css">

    </head>
    
     <style>
        body {
             font-family: 'Roboto';
       }
       </style>
    
    <body>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>

  <header>
      <br>
   <div class="jumbotron apresentacao" style="background-color:#DB7093">
    <h1 class="display-4" style='color: white'> <center>Cálculo de Amortização</center></h1>
    <p><center>Site para executar cálculos de amortização. <br>Com amortização constante, amortização americana e cálculo em tabela price </center>
   </div>
      <br>
</header>
<!-- <div align="center"> -->
<section>
  <div class="jumbotron caixal1">
    <h1 class="display-4" style='color:#DB7093'>Ana Paula Augusto</h1>
    <div class="imagem">
     <img src="ana.png" style="height: 200px; width: 200px" >
  </div>
    <br>
    <hr class="my-4 linha">
    <p>Responsável pela criação da pagina inicial, cabeçalho, rodapé, menu e design.</p>
    <p class="lead">
      <a class="btn-primary btn-lg" href="home.jsp" role="button" style="background-color:#DB7093">Inicio</a>
    </p>
  </div>
</section>  
<section>
    <div class="jumbotron caixal1">
    <h1 class="display-4" style='color:#DB7093'>André Luiz da Silva</h1>
    <div class="imagem">
     <img src="andre.jpeg" style="height: 200px; width: 200px" >
  </div>
    <br>
    <hr class="my-4 linha">
    <p>Responsável pela criação da página da Tabela Price</p>
    <p class="lead">
      <a class="btn-primary btn-lg" href="tabela-price.jsp" role="button" style="background-color:#DB7093">Tabela Price</a>
    </p>
  </div>
</section>
     
<section>
  <div class="jumbotron caixal1">
    <h1 class="display-4" style='color:#DB7093'>Mauricio Pedro Costa </h1>
    <div class="imagem">
     <img src="mauricio.jpeg" style="height: 200px; width: 200px" >
  </div>
    <br>
    <hr class="my-4 linha">
    <p>Responsável pela criação da pagina de Amortização Americana</p>
    <p class="lead">

      <a class="btn-primary btn-lg" href="amortizacao-americana.jsp" role="button" style="background-color:#DB7093">Americana</a>
    </p>
  </div>
</section>

    <section>
    <div class="jumbotron caixal1">
    <h1 class="display-4" style='color:#DB7093'>Roberta Cardoso Novaes</h1>
    <div class="imagem">
        
     <img src="roberta.jpeg" style="height: 200px; width: 200px" >
  </div>
    <br>
    <hr class="my-4 linha">
     <p>Responsável pela criação da página de  Amortização Constante</p>
    <p class="lead">
        
      <a class="btn-primary btn-lg" href="amortizacao-constante.jsp" role="button" style="background-color:#DB7093">Constante</a>
    </p>
    </div>
    </section>
     </div>  
      
<%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
