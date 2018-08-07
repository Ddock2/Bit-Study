package kr.co.mlec.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/table")
public class TableServlet extends HttpServlet{
/*
 	http://localhost:8000/Lecture-Web/sevlet/table?row=3&col=4
 	
 	------------------------------------------------
 	| cell(0,0) | cell(0,1) | cell(0,2) | cell(0,3)|
 	------------------------------------------------
 	| cell(1,0) | cell(1,1) | cell(1,2) | cell(1,3)|
 	------------------------------------------------
 	| cell(2,0) | cell(2,1) | cell(2,2) | cell(2,3)|
 	------------------------------------------------
 	
 	http://localhost:8000/Lecture-Web/servlet/table
 	 5 X 5 table
 	 
 	http://localhost:8000/Lecture-Web/servlet/table?col=2
 	 5 X 2 table
*/
	
	public void init(ServletConfig config) throws ServletException {
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int row = 5;
		int col = 5;
		
		String r = request.getParameter("row");
		String c = request.getParameter("col");
		
		if(r!=null) row = Integer.parseInt(r);
		if(c!=null) col = Integer.parseInt(c);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		StringBuilder sb = new StringBuilder();
		
		sb.append("<html>");
		sb.append("<head>");
		sb.append("<title>테이블</title>");
		sb.append("</head>");
		sb.append("<body>");
		for(int i=0; i<row; i++) {
			for(int j=0; j<col; j++) {
				sb.append("-----------");
			}
			sb.append("<br>");
			for(int j=0; j<col; j++) {
				sb.append("| cell(" + i + "," + j + ") ");
				if(j==col-1) sb.append("| <br>");
			}
			if(i==row-1) {
				for(int j=0; j<col; j++) {
					sb.append("-----------");
				}
			}
		}
		sb.append("</body>");
		sb.append("</html>");
		
		out.println(sb);
		out.flush();
		out.close();
	}
	
	public void destroy() {
		
	}
}
