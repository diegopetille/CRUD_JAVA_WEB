
<%@page import="br.com.DAO.petsDAO"%>
<%@page import="br.com.DTO.petsDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="excluirpetstyle.css"/>
    </head>
    <body>
        <% 
            try {
                    petsDTO objpetsDTO = new petsDTO();
        
        objpetsDTO.setId_pet(Integer.parseInt(request.getParameter("id")));
        
        petsDAO objpetsDAO = new petsDAO();
        objpetsDAO.ExcluirPet(objpetsDTO);
                } catch (Exception e) {
                }
        %>
        <div class="container">
        <h1>Pet excluído do sistema.</h1><br>
        <a href="listarPets.jsp">Voltar</a>
        </div>
    </body>
</html>
