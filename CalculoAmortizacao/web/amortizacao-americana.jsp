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
        <style>
            body {
                font-family: 'Roboto';
            }
        </style>
    </head>
    

    
    <body>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>

    <form action="amortizacao-americana.jsp">
            Valor a pagar: <input type="number" name="total"/>
            Meses a pagar: <input type="number" name="presto"/>
            % de juros> <input type="double" name="porcent"/>
            <input type="submit" value="Calcular"/>
        </form>
        <%if(request.getParameter("porcent") != null){%>
            <%try{%>
                <%int valorX = Integer.parseInt(request.getParameter("total"));%>
                <%double valorY = Double.parseDouble(request.getParameter("presto"));%>
                <%double valorZ = (valorX/Double.parseDouble(request.getParameter("porcent")))*100; %>
                <table>
                    <tr>
                        <th>Mês</th>
                        <th>Saldo devedor</th>
                        <th>Amortização</th>
                        <th>Juros</th>
                        <th>Prestação</th>
                    </tr>
                    <%for(int vF=0; vF<=valorY; vF++){%>
                        <tr>
                            <td><%System.out.println(vF);%></td>
                            <td><%System.out.println(valorX);%></td>
                            <td><%System.out.println("-");%></td>
                            <td><%System.out.println(valorZ);%></td>
                            <td><%System.out.println(valorZ);%></td>
                        </tr>
                    <%}%>
                    <tr>
                        <td><%System.out.println(valorY);%></td>
                        <td><%System.out.println("-");%></td>
                        <td><%System.out.println(valorX);%></td>
                        <td><%System.out.println(valorZ);%></td>
                        <td><%System.out.println(valorX + valorZ);%></td>
                    </tr>
                    <tr>
                        <td><%System.out.println("Total");%></td>
                        <td></td>
                        <td><%System.out.println(valorX);%></td>
                        <td><%System.out.println(valorZ * valorY);%></td>
                        <td><%System.out.println(valorX + (valorZ * valorY));%></td>
                    </tr>
                </table>
            <%}catch(Exception ex){%>
                <%}}%>
        
        
         <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
