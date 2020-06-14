<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Endereco"%>
<%@page import="dao.EnderecoDAO"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
           try{
               Endereco end = new Endereco();
               EnderecoDAO edr = new EnderecoDAO();
               if(request.getParameter("cidade").equals("")){
                   response.sendRedirect("index.jsp");
               }else{
                   end.setBairro(request.getParameter("bairro"));
                   end.setCep(request.getParameter("cep"));
                   end.setEndereco(request.getParameter("endereco"));
                   end.setEndereco2(request.getParameter("endereco2"));
                   end.setEndereco_id(Integer.parseInt(request.getParameter("codigo")));
                   end.setTelefone(request.getParameter("telefone"));
                   edr.alterar(end);
                   response.sendRedirect("index.jsp");
               } 
           }catch(Exception erro){
             throw new RuntimeException("erro 21: " + erro);
           }  
        
        
        %>
        
    </body>
</html>
