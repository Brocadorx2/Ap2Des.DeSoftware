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
               if(request.getParameter("bairro").equals("") || request.getParameter("cep").equals("") || request.getParameter("endereco").equals("") || request.getParameter("endereco2").equals("") || request.getParameter("telefone").equals("")){
                   response.sendRedirect("index.jsp");
               }else{
                   end.setBairro(request.getParameter("bairro"));
                   end.setCep(request.getParameter("cep"));
                   end.setEndereco(request.getParameter("endereco"));
                   end.setEndereco2(request.getParameter("endereco2"));
                   end.setTelefone(request.getParameter("telefone"));
                   edr.inserir(end);
                   response.sendRedirect("index.jsp");
               } 
           }catch(Exception erro){
             throw new RuntimeException("erro 20: " + erro);
           }  
        
        
        %>
        
    </body>
</html>
