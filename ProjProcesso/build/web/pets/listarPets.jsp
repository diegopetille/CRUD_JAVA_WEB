

<%@page import="br.com.DTO.petsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.petsDAO"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="listarpetsstyle.css"/>
    </head>
    <body>
        <div class="container">
        <% 
            
try {
    petsDAO objpetsDAO = new petsDAO();
    ArrayList<petsDTO> lista = objpetsDAO.listarPet();
    
    for(int num = 0; num < lista.size(); num++){
        out.print("Código: " + lista.get(num).getId_pet() + "<br>");
        out.print("Nome do pet: " + lista.get(num).getNome_pet() + "<br>");
        out.print("Raça do pet: " + lista.get(num).getRaca_pet() + "<br>");
        
        out.print("<a href='frmExcluirPetVIEW.jsp?id="
                   + lista.get(num).getId_pet() + "&nome="
                   + lista.get(num).getNome_pet() + "&raca="
                   + lista.get(num).getRaca_pet() + "'> Excluir </a>");
                   
                    %>  <br>  <%
                   

        out.print("<a href='frmEditarPetVIEW.jsp?id="
                   + lista.get(num).getId_pet() + "&nome="
                   + lista.get(num).getNome_pet() + "&raca="
                   + lista.get(num).getRaca_pet() + "'> Editar </a>");
        
%>  <br><br>  <%
        
           }
        
    } catch (Exception e) {
    JOptionPane.showMessageDialog(null, "Listar Pet");
    }
            
            %>
        </div>
    </body>
</html>
