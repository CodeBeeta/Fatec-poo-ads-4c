<%-- 
    Document   : Tabela-Price
    Created on : 01/09/2019, 11:14:49
    Author     : MORDOR
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Price</title>
    </head>
    <body>
        <form>
            <label>Capital: </label>
            <input type="text" name="capital" required placeholder="Ex:1000">
            <label>Números de Meses:</label>
            <input type="number" name="meses" required placeholder="Ex: 4">
            <label>Taxa de juros(%):</label>
            <input type="number" name="juros" required placeholder="Ex: 3">
            <input type="submit" name="calcular" value="CALCULAR">
        </form>
        <% 
            if(request.getParameter("calcular") !=null){ 
            // Definindo váriaveis
            double capital, meses, juros, pmt, jurosPeriodo,amortizacaoPeriodo, capitalPeriodo;
            try {
                // Recebendo dados do form
                capital = Double.parseDouble(request.getParameter("capital"));
                meses = Double.parseDouble(request.getParameter("meses"));
                juros = Double.parseDouble(request.getParameter("juros"))/100;
                capitalPeriodo = capital;
                jurosPeriodo = juros;
                // Calculo das parcelas através do pmt
                pmt = capital/((1-(Math.pow((1+juros),(-meses))))/juros);
                // Instanciando o formatador de números
                DecimalFormat df = new DecimalFormat("###,###,##0.00"); 
        %>
                
                <h1>TABELA PRICE</h1>
                <table border='2'>
                    <tr>
                        <th colspan="5">DADOS</th>
                    </tr>
                    <tr>
                        <th colspan="3">Capital</th>
                        <th>Meses</th>
                        <th>Juros</th>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <%=df.format(capital)%>
                        </td>
                        <td>
                            <%=(int) meses%>
                        </td>
                        <td>
                            <%=(int) (juros*100)%>%
                        </td>
                    </tr>
                    <tr>
                        <th colspan="5">
                            RESULTADO
                        </th>
                    </tr>
                    <tr>
                        <th>Período</th>
                        <th>Saldo devedor(R$)</th>
                        <th>Prestação(R$)</th>
                        <th>Amortização(R$)</th>
                        <th>Juros(R$)</th>
                    </tr>
                    <% 
                        for(int i=0; i<=meses; i++){
                        if(i==0){ %>                    
                            <tr>
                                <td> <%=i%> </td><td> <%=df.format(capital)%> </td><td> - </td><td> - </td><td> - </td>
                            <tr>                                
                        <% } else{  
                            jurosPeriodo = capitalPeriodo*juros;
                            amortizacaoPeriodo = pmt-jurosPeriodo;
                            capitalPeriodo -= amortizacaoPeriodo;
                        %>                        
                            <tr>
                                <td> <%=i%> </td><td> <%=df.format(capitalPeriodo)%> </td><td><%=df.format(pmt)%></td><td> <%=df.format(amortizacaoPeriodo)%> </td><td> <%=df.format(jurosPeriodo)%> </td>
                            <tr>                                
                        <% }
                    } %>  
                </table>
                <%
            } catch(Exception ex){ %>
            <span>Valores inválidos</span> 
            <% }
        } %>
    </body>
</html>
