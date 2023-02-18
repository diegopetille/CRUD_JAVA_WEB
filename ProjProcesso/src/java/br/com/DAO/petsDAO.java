
package br.com.DAO;

import br.com.DTO.petsDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author borbo
 */
public class petsDAO {
    Connection conn;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<petsDTO> lista = new ArrayList<>();
    
    public void CadastrarPet(petsDTO objpetsDTO){
        
        String sql = "insert into pets (id, nome, raca) values (null, ?, ?)";
        conn = new ConexaoDAO().ConexaoBD();
        
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, objpetsDTO.getNome_pet());
            pstm.setString(2, objpetsDTO.getRaca_pet());
            
            pstm.execute();
            pstm.close();
            
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }
    
    
    
    public ArrayList listarPet (){
        String sql = "select * from pets";
        conn = new ConexaoDAO().ConexaoBD();
        
        try {
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            
            while(rs.next()){
                petsDTO objpetsDTO = new petsDTO();
                
                objpetsDTO.setId_pet(rs.getInt("id"));
                objpetsDTO.setNome_pet(rs.getString("nome"));
                objpetsDTO.setRaca_pet(rs.getString("raca")); 
                
                lista.add(objpetsDTO);
            }
            
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        
        return lista;
    }
    
    
    public void ExcluirPet(petsDTO objpetsDTO){
        
        String sql = "delete from pets where id = ?";
        conn = new ConexaoDAO().ConexaoBD();
        
        try {
            
            pstm = conn.prepareStatement(sql);
             
             pstm.setInt(1, objpetsDTO.getId_pet() );
             
             pstm.execute();
            pstm.close();
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        
    }
    
    public void EditarPet(petsDTO objpetsDTO){
        String sql = "update pets set nome = ?, raca = ? where id = ?";
        conn = new ConexaoDAO().ConexaoBD();
        
        try {
            
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, objpetsDTO.getNome_pet());
            pstm.setString(2, objpetsDTO.getRaca_pet());
            pstm.setInt(3, objpetsDTO.getId_pet());
            
            pstm.execute();
            pstm.close();
            
        } catch (Exception e) {
             JOptionPane.showMessageDialog(null, e);
        }
    }
    
    
    
}
