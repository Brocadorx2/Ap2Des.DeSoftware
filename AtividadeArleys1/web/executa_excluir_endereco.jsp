<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.EnderecoDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
          try{
              EnderecoDAO edr = new EnderecoDAO();
              edr.excluir(Integer.parseInt(request.getParameter("codigo")));
              response.sendRedirect("index.jsp");
          }catch(Exception erro){
              throw new RuntimeException("erro 22: " + erro);
          }
            
        %>
   
    </body>
</html>
