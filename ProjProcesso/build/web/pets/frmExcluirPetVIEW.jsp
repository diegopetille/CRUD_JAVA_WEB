

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="frmexcluirpetstyle.css"/>
    </head>
    <body>
        <div class="container">
        <form action="ExcluirPet.jsp" method="POST">
            
            <label>CÓDIGO do pet:</label><br>
            <input type="text" name="id" 
                   value="<%=request.getParameter("id")%>"><br><br>
            
            <label>NOME do pet:</label><br>
            <input type="text" name="nome"
                   value="<%=request.getParameter("nome")%>"><br><br>
            
            <label>RAÇA do pet:</label><br>
            <input type="text" name="raca"
                   value="<%=request.getParameter("raca")%>"><br><br>
            
            <br>
            
            <button type="submit">Excluir</button>
            
        </form>
        </div>
    </body>
</html>
