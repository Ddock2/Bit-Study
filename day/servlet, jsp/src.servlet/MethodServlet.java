package kr.co.mlec.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MethodServlet extends HttpServlet{

	
/*
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service메소드 호출");
	}
*/	
	
	// http://http://localhost:8000/Lecture-Web/method?id=hong 요청했다는 가정
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getMethod();
		StringBuffer url = request.getRequestURL();
		String uri = request.getRequestURI();
		
		String id = request.getParameter("id");
		
		System.out.println("method : " + method);
		System.out.println("url : " + url.toString());
		System.out.println("uri : " + uri);
		System.out.println("id : " + id);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("	<HEAD>");
		out.println("		<TITLE>메소드호출방식</TITLE>");
		out.println("	</HEAD>");
		out.println("	<BODY>");
		out.println("-------------------------------------<br>");
		out.println("출력결과<br>");
		out.println("-------------------------------------<br>");
		out.println("파라미터(id) : " + id + "<br>");
		out.println("요청방식 : " + method + "<br>");
		out.println("url : " + url.toString() + "<br>");
		out.println("uri : " + uri + "<br>");
		out.println("	</BODY>");
		out.println("</HTML>");
		
		out.flush();
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");			// post방식에서 한글 나오게(유니코드로 날라와서)
		
		String id = request.getParameter("id");
		String method = request.getMethod();
		StringBuffer url = request.getRequestURL();
		String uri = request.getRequestURI();
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("	<HEAD>");
		out.println("		<TITLE>메소드호출방식</TITLE>");
		out.println("	</HEAD>");
		out.println("	<BODY>");
		out.println("-------------------------------------<br>");
		out.println("출력결과<br>");
		out.println("-------------------------------------<br>");
		out.println("파라미터(id) : " + id + "<br>");
		out.println("요청방식 : " + method + "<br>");
		out.println("url : " + url.toString() + "<br>");
		out.println("uri : " + uri + "<br>");
		out.println("	</BODY>");
		out.println("</HTML>");
		
		out.flush();
		out.close();
	}
	
	

}
