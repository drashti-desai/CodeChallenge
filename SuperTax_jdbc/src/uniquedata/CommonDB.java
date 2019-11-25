/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uniquedata;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Drashti Desai
 */
public class CommonDB {
     Connection ConnectionDB() throws ClassNotFoundException, SQLException{
         
       Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
      Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=SuperTaxDB","sa","d123");
      return con;
     }
    
}
