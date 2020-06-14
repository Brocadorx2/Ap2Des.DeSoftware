<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Pais"%>
<%@page import="dao.PaisDAO"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
           try{
               Pais pa = new Pais();
               PaisDAO pai = new PaisDAO();
               if(request.getParameter("pais").equals("")){
                   response.sendRedirect("index.jsp");
               }else{
                   pa.setPais(request.getParameter("pais"));
                   pa.setPais_id(Integer.parseInt(request.getParameter("codigo")));
                   pai.alterar(pa);
                   response.sendRedirect("index.jsp");
               } 
           }catch(Exception erro){
             throw new RuntimeException("erro 15: " + erro);
           }  
        
        
        %>
        
    </body>
</html>
