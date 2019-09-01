<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amortização americana</title>
    </head>
    <body>
        <form action="american.jsp">
            Valor a pagar: <input type="number" name="total"/>
            Meses a pagar: <input type="number" name="presto"/>
            % de juros> <input type="double" name="porcent"/>
            <input type="submit" value="Calcular"/>
        </form>
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
            <%}%>%>
    </body>
</html>
