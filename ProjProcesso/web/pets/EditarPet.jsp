
<%@page import="br.com.DAO.petsDAO"%>
<%@page import="br.com.DTO.petsDTO"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <<link rel="stylesheet" href="editadopetstyle.css"/>
        
    </head>
    <body>
        <%
            try {
                    
            petsDTO objpetsDTO = new petsDTO();
            
            objpetsDTO.setId_pet(Integer.parseInt(request.getParameter("id")));
            objpetsDTO.setNome_pet(request.getParameter("nome"));
            objpetsDTO.setRaca_pet(request.getParameter("raca"));
            
            petsDAO objpetsDAO = new petsDAO();
            objpetsDAO.EditarPet(objpetsDTO);
            
            
                } catch (Exception e) {
                JOptionPane.showMessageDialog(null, e);
                }
        %>
        
        <div class="container">
        <h1>Pet atualizado!</h1><br><br>
        <a href="listarPets.jsp">Voltar</a>
        </div>
    </body>
</html>
