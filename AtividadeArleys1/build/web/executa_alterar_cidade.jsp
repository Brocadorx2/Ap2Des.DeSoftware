<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Cidade"%>
<%@page import="dao.CidadeDAO"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
           try{
               Cidade ci = new Cidade();
               CidadeDAO cid = new CidadeDAO();
               if(request.getParameter("cidade").equals("")){
                   response.sendRedirect("index.jsp");
               }else{
                   ci.setCidade(request.getParameter("cidade"));
                   ci.setCidade_id(Integer.parseInt(request.getParameter("codigo")));
                   cid.alterar(ci);
                   response.sendRedirect("index.jsp");
               } 
           }catch(Exception erro){
             throw new RuntimeException("erro 18: " + erro);
           }  
        
        
        %>
        
    </body>
</html>
