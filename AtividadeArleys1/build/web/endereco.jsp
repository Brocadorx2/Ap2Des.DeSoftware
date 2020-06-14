<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Endereco" %>
<%@page import="dao.EnderecoDAO" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Endereços</title>
    </head>
    <body>  
            <h1>Buscar Endereço:</h1>
            
            <form action="endereco.jsp" method="post"> 
                <label>Procurar Endereço:</label><br/>
                
                <input type="text" name="endereco"/><br/>
                
                <button type="submit">
                    OK
                </button>    
            </form>
            
              <%
            try{
                out.print("<table>");
                out.print("<tr>");
                out.print("<th>Codigo</th><th>bairro</th><th>cep</th><th>endereco</th><th>endereco2</th><th>telefone</th>");
                EnderecoDAO edr = new EnderecoDAO();
                if(request.getParameter("endereco") == "" || request.getParameter("endereco") == null){
                 ArrayList<Endereco> lista = edr.listarTodos();
                  for(int num = 0; num < lista.size(); num++){
                      out.print("<tr>");
                      out.print("<td>"+lista.get(num).getBairro()+"</td>");
                      out.print("<td>"+lista.get(num).getCep()+"</td>");
                      out.print("<td>"+lista.get(num).getCidade_id()+"</td>");
                      out.print("<td>"+lista.get(num).getEndereco()+"</td>");
                      out.print("<td>"+lista.get(num).getEndereco2()+"</td>");
                      out.print("<td>"+lista.get(num).getEndereco_id()+"</td>");
                      out.print("<td>"+lista.get(num).getTelefone()+"</td>");
                      out.print("<td>"+lista.get(num).getUltima_atualizacao()+"</td>");
                      out.print("<td><a href='alterar_endereco.jsp?codigo='"+lista.get(num).getEndereco_id()+"&bairro="+lista.get(num).getBairro()+"&cep="+lista.get(num).getCep()+"&endereco="+lista.get(num).getEndereco()+"&endereco2="+lista.get(num).getEndereco2()+"&telefone="+lista.get(num).getTelefone()+" '>CLIQUE</a> </td>");
                      out.print("<td><a href='excluir_endereco.jsp?codigo='"+lista.get(num).getEndereco_id()+"&bairro="+lista.get(num).getBairro()+"&cep="+lista.get(num).getCep()+"&endereco="+lista.get(num).getEndereco()+"&endereco2="+lista.get(num).getEndereco2()+"&telefone="+lista.get(num).getTelefone()+" '>CLIQUE</a> </td>");                      
                      out.print("</tr>");
                  }
                
                }
                
                out.print("</tr>");
                
                out.print("</table>");
            }catch(Exception erro){
                throw new RuntimeException("erro 24: " +erro);
            }    
            %>
        
            <a href="inserir_endereco.jsp">Adicionar</a>
            
    </body>
</html>
