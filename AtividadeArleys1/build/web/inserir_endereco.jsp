<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <form action="executa_inserir_endereco.jsp" method="post">
            
            <!--<label>Codigo</label><br/>
            <imput type="text" name="codigo"/><br/>-->    
            
            <label>Bairro:</label><br/>
            <imput type="text" name="bairro"/><br/>
            
            <label>Cep:</label><br/>
            <imput type="text" name="cep"/><br/>
            
            <label>Endereço:</label><br/>
            <imput type="text" name="endereco"/><br/>
            
            <label>Endereço 2:</label><br/>
            <imput type="text" name="endereco2"/><br/>
            
            <label>Telefone:</label><br/>
            <imput type="text" name="telefone"/><br/>
            
            <button type="submit">
                OK
            </button>
            
        </form>
            
        
    </body>
</html>
