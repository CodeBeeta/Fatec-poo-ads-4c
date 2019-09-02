<%-- 
    Document   : Amortizacao-americana
    Created on : 01/09/2019, 11:14:13
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
            overflow:auto;
        }
    </style>
    <body>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>

    <% if(request.getParameter("calcular")==null){ %>
          <div align="center">
        <form> 
            <h3>Amortização americana</h3>
            <br>
            <label>Valor a pagar: </label>
            <input type="number" name="total">
            <label>Meses a pagar:</label>
            <input type="number" name="prestacoes">
            <label>% de juros:</label>
            <input type="number" name="porcentagem">    
            <input type="submit" name="calcular" value="Calcular" class="btn-primary" hrel="amortizacao-americana.jsp" role="button" style="background-color:#DB7093"/>
        </form>
              
        <% }else{ %>
            <% 
                int valorX = Integer.parseInt(request.getParameter("total"));
                double valorY = Double.parseDouble(request.getParameter("prestacoes"));
                double valorZ = (valorX/Double.parseDouble(request.getParameter("porcentagem")))*100;
                double valorFinal = (valorX + valorZ);
                double valorJuros = (valorZ * valorY);
                double valorTotal = (valorX + valorJuros);
            %>
            <div align="center">
                <h1><br>Resultado:</h1>
                <table border='1'>
                    <tr>
                      <th>Mês</th>
                      <th>Saldo Devedor</th>
                      <th>Amortização</th>
                      <th>Juros</th>
                      <th>Prestação</th>
                    </tr>
                <% for (int i = 0; i <= valorY; i++){%>
                    <tr>
                        <td><%= i%></td>
                        <td><%= df.format(valorX)%></td> 
                        <td>-</td>
                        <td><%= df.format(valorZ)%></td>
                        <td><%= df.format(valorZ)%></td>
                    </tr>
                <% } %>
                <tr>
                    <td><%= df.format(valorY)%></td>
                    <td>-</td>
                    <td><%= df.format(valorX)%></td>
                    <td><%= df.format(valorZ)%></td>
                    <td><%= df.format(valorFinal)%></td>
                </tr>
                <tr>
                    <td>Total</td>
                    <td></td>
                    <td><%= df.format(valorX)%></td>
                    <td><%= df.format(valorJuros)%></td>
                    <td><%= df.format(valorTotal)%></td>
                </tr>
            </table> 
        </div>
        <%}%>
         <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
