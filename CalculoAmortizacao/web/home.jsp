<%-- 
    Document   : Home
    Created on : 01/09/2019, 11:14:29
    Author     : MORDOR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/style.css">

    </head>
    <body>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>

  <header>
      <br>
   <div class="jumbotron apresentacao" style="background-color:#DB7093">
    <h1 class="display-4" style='color: white'> <center>Cálculo de Amortização</center></h1>
    <p><center>Site para executar cálculos de amortização. <br>Com amortização constante, amortização americana e cálculo em tabela price </center>  </p>
  </div>
</header>
<br>
<section>
  <div class="jumbotron caixal1">
    <h1 class="display-4">Ana Paula Augusto</h1>
    <div class="imagem">
     <img src="ana.png" style="height: 200px; width: 200px" >
  </div>
    <p class="lead">Responsável pela criação da pagina inicial, com informações da equipe e design.</p>
    <hr class="my-4 linha">
    <p>Estudante do curso de Análise e Desenvolvimento de Sistemas na Fatec Praia Grande.</p>
    <p class="lead">
      <a class="btn btn-primary btn-lg" href="home.jsp" role="button">Inicio</a>
    </p>
  </div>
</section>

<section>
 <div class="jumbotron caixal2">
  <div class="info">
    <h1 class="display-4">André</h1>
    <div class="imagem">
     <img src="andre.jpeg" style="height: 200px; width: 200px" >
  </div>
    <p class="lead">Responsável pela criação da página de  Amortização Constante</p>
    <hr class="my-4 linha">
    <p>Estudante do curso de Análise e Desenvolvimento de Sistemas na Fatec Praia Grande.</p>
    <p class="lead">
      <a class="btn btn-primary btn-lg" href="amortizacao-constante.jsp" role="button">Constante</a>
    </p>
  </div>
</div>
</section>
        
<section>
  <div class="jumbotron caixal1">
    <h1 class="display-4">Mauricio</h1>
    <div class="imagem">
     <img src="mauricio.jpeg" style="height: 200px; width: 200px" >
  </div>
    <p class="lead">Responsável pela criação da página da Tabela Price</p>
    <hr class="my-4 linha">
    <p>Estudante do curso de Análise e Desenvolvimento de Sistemas na Fatec Praia Grande.</p>
    <p class="lead">
      <a class="btn btn-primary btn-lg" href="tabela-price.jsp" role="button">Tabela Price</a>
    </p>
  </div>
</section>
        
<section>
 <div class="jumbotron caixal2">
  <div class="info">
      
    <h1 class="display-4">Roberta</h1>
      <div class="imagem">
     <img src="roberta.jpeg" style="height: 200px; width: 200px" >
  </div>
    <p class="lead">Responsável pela criação da pagina de Amortização Americana</p>
    <hr class="my-4 linha">
    <p>Estudante do curso de Análise e Desenvolvimento de Sistemas na Fatec Praia Grande.</p>
    <p class="lead">
      <a class="btn btn-primary btn-lg" href="amortizacao-americana.jsp" role="button">Americana</a>
    </p>
  </div>

</div>
</section>
        

<%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
