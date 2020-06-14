<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Cidade" %>
<%@page import="dao.CidadeDAO" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cidades</title>
    </head>
    <body>  
            <h1>Buscar Cidade:</h1>
            
          <form action="cidade.jsp" method="post"> 
                <label>Procurar Cidades:</label><br/>
                
                <input type="text" name="cidade"/><br/>
                
                <button type="submit">
                    OK
                </button>    
            </form>
            
              <%
            try{
                out.print("<table>");
                out.print("<tr>");
                out.print("<th>Codigo</th><th>cidade</th>");
                CidadeDAO cid = new CidadeDAO();
                if(request.getParameter("cidade") == "" || request.getParameter("cidade") == null){
                 ArrayList<Cidade> lista = cid.listarTodos();
                  for(int num = 0; num < lista.size(); num++){
                      out.print("<tr>");
                      out.print("<td>"+lista.get(num).getCidade_id()+"</td>");
                      out.print("<td>"+lista.get(num).getCidade()+"</td>");
                      out.print("<td>"+lista.get(num).getUltima_atualizacao()+"</td>");
                      out.print("<td><a href='alterar_cidade.jsp?codigo='"+lista.get(num).getCidade_id()+"&cidade="+lista.get(num).getCidade()+">CLIQUE</a> </td>");
                      out.print("<td><a href='excluir_cidade.jsp?codigo='"+lista.get(num).getCidade_id()+"&cidade="+lista.get(num).getCidade()+">CLIQUE</a> </td>");                      
                      out.print("</tr>");
                  }      
                }else{
                  ArrayList<Cidade> lista = cid.listarCidade(request.getParameter("cidade"));
                   for(int num = 0; num < lista.size(); num++){
                      out.print("<tr>");
                      out.print("<td>"+lista.get(num).getCidade_id()+"</td>");
                      out.print("<td>"+lista.get(num).getCidade()+"</td>");
                      out.print("<td>"+lista.get(num).getUltima_atualizacao()+"</td>");
                      out.print("<td><a href='alterar_cidade.jsp?codigo='"+lista.get(num).getCidade_id()+"&cidade="+lista.get(num).getCidade()+">CLIQUE</a> </td>");
                      out.print("<td><a href='excluir_cidade.jsp?codigo='"+lista.get(num).getCidade_id()+"&cidade="+lista.get(num).getCidade()+">CLIQUE</a> </td>");                      
                      out.print("</tr>");
                  }
                }
                
                out.print("</tr>");
                
                out.print("</table>");
            }catch(Exception erro){
                throw new RuntimeException("erro 23: " +erro);
            }    
            %>
            
            <a href="inserir_cidade.jsp">Adicionar</a>
        
    </body>
</html>
