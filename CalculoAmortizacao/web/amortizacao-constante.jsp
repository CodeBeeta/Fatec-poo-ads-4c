<%-- 
    Document   : amortizacao-constante
    Created on : 31/08/2019, 16:23:50
    Author     : Roberta Novaes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amortização Constante</title>
    </head>
    <body>
         <% if(request.getParameter("calcular")==null){ %>
        <form> 
            <h3>Preencha as informações para calcular a amortização constante</h3>
            <br>
            
            Valor Financiado:
            <input type="number" name="valorFinanciado" />
            
            Taxa de Juros(%):
            <input type="number" name="taxaJuros" />
            
            Números de Meses:
            <input type="number" name="numeroMeses" />
            
            <input type="submit" name="calcular" value="Calcular" />
        </form>
        <% }else{ %>
            
            <% 
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
            %>
            <!-- Inicio da tabela com os cabeçalhos -->
            <table> 
                <tr>
                  <th>#</th>
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
                    <td><%= parcela%></td> 
                    <td><%= amortizacao%></td>
                    <td><%= jurosSobreSaldoDevedor%></td>
                    <td><%= saldoDevedor%></td>
                </tr>
            
            <% } %>
            <!-- Fora do for, fechando a tabela -->  
            </table> 
        
        <%}%>
    </body>
</html>
