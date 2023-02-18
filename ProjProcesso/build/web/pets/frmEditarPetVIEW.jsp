
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="editarpetstyle.css"/>
    </head>
    <body>
        <div class="container">
        <form action="EditarPet.jsp" method="POST">
            
            <label>Código do pet: </label><br>
            <input type="text" name="id"
                   value="<%=request.getParameter("id")%>"><br><br>
            
            <label>Edite o NOME do pet:</label><br>
            <input type="text" name="nome"
                   value="<%=request.getParameter("nome")%>"><br><br>
            
            <label>Edite a RAÇA do pet:</label><br>
            <input type="text" name="raca"
                   value="<%=request.getParameter("raca")%>"><br><br>
            
            <button type="submit">Salvar</button>
            </div>
            
        </form>
    </body>
</html>
