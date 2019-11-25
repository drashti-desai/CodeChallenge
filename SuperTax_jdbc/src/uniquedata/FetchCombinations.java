/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uniquedata;
import java.sql.*;
import java.sql.Connection;
import java.sql.Statement;
import java.util.Scanner;

/**
 *
 * @author Drashti Desai
 */
public class FetchCombinations {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
      try{
        CommonDB cdb = new CommonDB();
        Connection con = cdb.ConnectionDB();  
        System.out.println("Choose out of 1 to 3 case");
        System.out.println("");
        System.out.println("case 1: Unique combination of supplier_gstin & purchaser_gstin with No_of_rows_for_each_combinaton");
        System.out.println("case 2: Count of unique supplier_gstin");  
        System.out.println("case 3: Count of unique purchaser_gstin");
        System.out.println("");
        System.out.println("Enter case:");  
        Scanner sc = new Scanner(System.in);
        int task = sc.nextInt();
  
       switch (task){
       case 1:
        PreparedStatement ps = con.prepareStatement("SELECT supplier_gstin, purchaser_gstin, COUNT(*) AS No_of_rows_for_combination FROM test_dataset GROUP BY supplier_gstin,purchaser_gstin HAVING COUNT(*) >= 1");
        ResultSet rs= ps.executeQuery();
        System.out.println("Supplier_gstin  purchaser_gstin  No_of_rows_for_combination");

        while (rs.next()) {
           String supplier_gstin = rs.getString("supplier_gstin");
           String purchaser_gstin = rs.getString("purchaser_gstin");
           int noc = rs.getInt("No_of_rows_for_combination");
           System.out.println(supplier_gstin+"  "+purchaser_gstin+"  "+noc);
        }
        System.out.println();
        System.out.println();
      
       case 2:
        PreparedStatement ps1 = con.prepareStatement("SELECT supplier_gstin , COUNT(*) AS distinct_count_sgstin FROM test_dataset GROUP BY supplier_gstin ORDER BY 2");
        ResultSet rs1= ps1.executeQuery();
        System.out.println("Supplier_gstin  distinct_count_sgstin");

        while (rs1.next()) {
           String supplier_gstin = rs1.getString("supplier_gstin");
           int dcs = rs1.getInt("distinct_count_sgstin");
           System.out.println(supplier_gstin+"  "+dcs);
        }
        System.out.println();
        System.out.println();

       case 3:
        PreparedStatement ps2 = con.prepareStatement("SELECT purchaser_gstin , COUNT(*) AS distinct_count_pgstin FROM test_dataset GROUP BY purchaser_gstin ORDER BY 2");
        ResultSet rs2= ps2.executeQuery();
        System.out.println("purchaser_gstin  distinct_count_pgstin");

        while (rs2.next()) {
           String purchaser_gstin = rs2.getString("purchaser_gstin");
           int dcp = rs2.getInt("distinct_count_pgstin");
           System.out.println(purchaser_gstin+"  "+dcp);
        }
        System.out.println();
        System.out.println();
        
       default :
           System.out.println("Invalid task");
      }
       
      }catch(SQLException e){
          e.printStackTrace();
      }
      
    }
    
}

