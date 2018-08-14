package com.test.ex;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/JoinOK")
public class JoinOK extends HttpServlet {
	
	private Connection dbconn;
	private Statement stmt;
	
	private String name, id, pw, gender, hp, hp2, hp3;
	

    public JoinOK() {
        super();
     
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		System.out.println("doPost");
		registerMember(request, response);
		
		
	}
	
	
	private void registerMember(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		
		name = request.getParameter("name");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		hp = request.getParameter("hp");
		hp2 = request.getParameter("hp2");
		hp3 = request.getParameter("hp3");
		gender = request.getParameter("gender");
		
		String sql = "insert into member values('"+name+"','"+id+"','"+pw+"','"+hp+"','"+hp2+"','"+hp3+"','"+gender+"')";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			dbconn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","1234");
			stmt = dbconn.createStatement();
			int n = stmt.executeUpdate(sql);
			
			if(n > 0) {
				System.out.println("���� ����");
				response.sendRedirect("joinRes.jsp");
			}else {
				System.out.println("���� ����");
				response.sendRedirect("join.html");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(stmt != null)
				try {
					stmt.close();
					if(dbconn != null) dbconn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
