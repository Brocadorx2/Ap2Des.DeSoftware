<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <form action="executa_excluir_pais.jsp" method="post">
            
            <label>Codigo:</label><br/>
            <imput type="text" name="codigo" value="<%=request.getParameter("codigo")%>" /><br/>    
            
            <label>Pais:</label><br/>
            <imput type="text" name="pais" value="<%=request.getParameter("pais")%>" /><br/>
            
            <button type="submit">
                OK
            </button>
            
        </form>
            
        
    </body>
</html>

