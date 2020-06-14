<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Pais" %>
<%@page import="dao.PaisDAO" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Paises</title>
    </head>
     <body>  
            <h1>Procurar Pais:</h1>
            
            <form action="pais.jsp" method="post"> 
                <label>Buscar Pais:</label><br/>
                
                <input type="text" name="pais"/><br/>
                
                <button type="submit">
                    OK
                </button>    
            </form>
            
            <%
            try{
                out.print("<table>");
                out.print("<tr>");
                out.print("<th>Codigo</th><th>pais</th>");
                PaisDAO pai = new PaisDAO();
                if(request.getParameter("pais") == "" || request.getParameter("pais") == null){
                  ArrayList<Pais> lista = pai.listarTodos();
                  for(int num = 0; num < lista.size(); num++){
                      out.print("<tr>");
                      out.print("<td>"+lista.get(num).getPais_id()+"</td>");
                      out.print("<td>"+lista.get(num).getPais()+"</td>");
                      out.print("<td>"+lista.get(num).getUltima_atualizacao()+"</td>");
                      out.print("<td><a href='alterar_pais.jsp?codigo='"+lista.get(num).getPais_id()+"&pais="+lista.get(num).getPais()+">CLIQUE</a> </td>");
                      out.print("<td><a href='excluir_pais.jsp?codigo='"+lista.get(num).getPais_id()+"&pais="+lista.get(num).getPais()+">CLIQUE</a> </td>");                      
                      out.print("</tr>");
                  }
                }else{
                   ArrayList<Pais> lista = pai.listarPais(request.getParameter("pais"));
                    for(int num = 0; num < lista.size(); num++){
                      out.print("<tr>");
                      out.print("<td>"+lista.get(num).getPais_id()+"</td>");
                      out.print("<td>"+lista.get(num).getPais()+"</td>");
                      out.print("<td>"+lista.get(num).getUltima_atualizacao()+"</td>");
                      out.print("<td><a href='alterar_pais.jsp?codigo='"+lista.get(num).getPais_id()+"&pais="+lista.get(num).getPais()+">CLIQUE</a> </td>");
                      out.print("<td><a href='excluir_pais.jsp?codigo='"+lista.get(num).getPais_id()+"&pais="+lista.get(num).getPais()+">CLIQUE</a> </td>");                      
                      out.print("</tr>");
                    } 
                }
                
                out.print("</tr>");
                
                out.print("</table>");
            }catch(Exception erro){
                throw new RuntimeException("erro 22: " +erro);
            }    
            %>
        
            <a href="inserir_pais.jsp">Adicionar</a>
            
    </body>
</html>
