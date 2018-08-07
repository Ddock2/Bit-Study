package kr.co.mlec.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/examMethod")			// 어노테이션
//@WebServlet(urlPatterns={"/examMethod", "/examM"})
public class TestFriend extends HttpServlet{
	
	
	public void init(ServletConfig config) throws ServletException {
		
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String[] hobbys = request.getParameterValues("hobby");
		
		System.out.println("name : " + name);
		System.out.println("hobby : " + Arrays.toString(hobbys));
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		StringBuilder sb = new StringBuilder();
		sb.append("<html>");
		sb.append(" <head>");
		sb.append("  <title>출력결과</title>");
		sb.append(" </head>");
		sb.append(" </body>");
		sb.append(" 	이름  : " + name + "<br>");
		sb.append(" 	취미  : ");
		for(int i=0; i<hobbys.length; i++) {
			sb.append(hobbys[i]);
			if(i!=hobbys.length-1) {
				sb.append(",&nbsp;&nbsp;");
			}
		}
		sb.append(" </body>");
		sb.append("</html>");
		
		out.println(sb.toString());
		out.flush();
		out.close();
		
/*		
		out.println("<HTML>");
		out.println("	<HEAD>");
		out.println("		<TITLE>메소드호출방식</TITLE>");
		out.println("	</HEAD>");
		out.println("	<BODY>");
		out.println("-------------------------------------<br>");
		out.println("이름 : " + name + "<br>");
		out.println("취미 : ");
		for(String hobby : hobbys) {
			out.println(hobby + "&nbsp;&nbsp;");
		}
		out.println("<br>-------------------------------------<br>");
		out.println("	</BODY>");
		out.println("</HTML>");
		
		out.flush();
		out.close();
*/
	}
	
	public void destroy() {
		
	}
}
