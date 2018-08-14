package com.test.ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class MemberDAO {
	
	private Connection dbconn;
	private Statement stmt;
	private ResultSet rs;
	
	
	
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String id = "scott";
	private String pw = "1234";
	
	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
	
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	public ArrayList<MemberDTO> selectMember(){
		ArrayList<MemberDTO> mdtos = new ArrayList<MemberDTO>();
		
		try {
			
			dbconn = DriverManager.getConnection(url, id, pw);
			stmt = dbconn.createStatement();
			rs = stmt.executeQuery("select * from member");
			
			while(rs.next()) {
				String name = rs.getString("name");
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String hp = rs.getString("hp");
				String hp2 = rs.getString("hp2");
				String hp3 = rs.getString("hp3");
				String gender = rs.getString("gender");
				
				MemberDTO mdto = new MemberDTO(name,  id, pw, hp, hp2, hp3, gender );
				mdtos.add(mdto);
			}

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs !=null)rs.close();
				if(stmt != null)stmt.close();
				if(dbconn != null)dbconn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}

		return mdtos;
	}
	
	
	
	
	
	
	
	
	
}
