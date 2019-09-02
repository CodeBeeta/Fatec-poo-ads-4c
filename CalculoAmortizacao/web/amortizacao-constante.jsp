<%-- 
    Document   : amortizacao-constante
    Created on : 31/08/2019, 16:23:50
    Author     : Roberta Novaes
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amortização Constante</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    
    <style>
        body {
             font-family: 'Roboto';
       }
       </style>
    
    <body>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
    
          <div align="center">
        <form> 
            <h3>Amortização constante</h3>
            <br>
            
            <label>Valor Financiado: </label>
            <input type="number" name="valorFinanciado" required placeholder="Ex:1000">
            
            <label>Números de Meses:</label>
            <input type="number" name="numeroMeses" required placeholder="Ex: 4">
            
            <label>Taxa de juros(%):</label>
            <input type="number" name="taxaJuros" required placeholder="Ex: 3">    
            
             <input type="submit" name="calcular" value="Calcular" class="btn-primary" href="tabela-price.jsp" role="button" style="background-color:#DB7093"/>
        
        </form>
        <% if(request.getParameter("calcular") != null){ 
                //declaração de variáveis
                Double valorFinanciado, taxaJuros, numeroMeses, amortizacao, parcela, saldoDevedor, jurosSobreSaldoDevedor,saldoAnterior;
                
                //atribuição dos dados vindos do formulário
                valorFinanciado = Double.parseDouble(request.getParameter("valorFinanciado"));
                taxaJuros = Double.parseDouble(request.getParameter("taxaJuros"));
                numeroMeses = Double.parseDouble(request.getParameter("numeroMeses"));
                
                //variável de controle para saldo anterior
                saldoAnterior = valorFinanciado;
                
                //calculo da amortização, que na amortização constante é fixa, logo n precisa ir por for
                amortizacao = valorFinanciado/numeroMeses;
                // Instanciando o formatador de números
                DecimalFormat df = new DecimalFormat("###,###,##0.00"); 
            %>
            <!-- Inicio da tabela com os cabeçalhos -->
            <div align="center">
                <h1 style="color:#DB7093" ><br>Resultado:</h1>
                <table border='1'>
                <tr>
                  
                  <th>&nbsp;#</th>
                  <th>Valor da Parcela</th>
                  <th>Amortizações</th>
                  <th>Juros</th>
                  <th>Saldo Devedor</th>
                </tr>
            <%  for (int i = 0; i < numeroMeses; i++) { 
                
                  saldoDevedor = (valorFinanciado - ((i+1) * amortizacao )); //calculo de saldo devedor
                  jurosSobreSaldoDevedor = saldoAnterior *(taxaJuros/100); // calculo do juros sob o saldodevedor
                  saldoAnterior = saldoDevedor; // atualização variável de saldo anterior
                  parcela = amortizacao + jurosSobreSaldoDevedor; // calculo da parcela utilizando as variáveis anteriores
            
            %>
                <!-- Ainda dendtro do for, criação da linha -->    
                <tr>
                    <td><%= i+1%></td>
                    <td><%= df.format(parcela)%></td> 
                    <td><%= df.format(amortizacao)%></td>
                    <td><%= df.format(jurosSobreSaldoDevedor)%></td>
                    <td><%= df.format(saldoDevedor)%></td>
                </tr>
            
            <% } %>
            <!-- Fora do for, fechando a tabela -->  
            </table> 
        </div>
        <%}%>
        </div>
         <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
