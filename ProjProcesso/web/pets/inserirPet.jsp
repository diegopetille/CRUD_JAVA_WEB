
<%@page import="javax.swing.JOptionPane"%>
<%@page import="br.com.DAO.petsDAO"%>
<%@page import="br.com.DTO.petsDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="inserepetstyle.css"/>
    </head>
    <body>

        <%
        try {
                petsDTO objpetsDTO = new petsDTO();
        
        objpetsDTO.setNome_pet(request.getParameter("nome"));
        objpetsDTO.setRaca_pet(request.getParameter("raca"));
        
        petsDAO objpetsDAO = new petsDAO();
        objpetsDAO.CadastrarPet(objpetsDTO);
        
            } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
            }

        %>
<div class="container">
        <h1>Obrigado!</h1>
        <a href="listarPets.jsp">Pesquisar no banco</a>
</div>
    </body>
</html>
