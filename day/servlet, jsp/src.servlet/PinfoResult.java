package kr.co.mlec.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/pinfoResult")
public class PinfoResult extends HttpServlet{
	
	public void init() throws ServletException {
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String notice = "받지않음", ad = "받지않음", check="받지않음";
		
		String[] mail = request.getParameterValues("mail");		
		
		try {
			for(int i=0; i<mail.length; i++) {
				switch(mail[i]) {
					case "notice" :
						notice = "받음";
					case "ad" :
						ad = "받음";
					case "check" :
						check = "받음";
				}
			}
		}catch(Exception e) {
			
		}
		StringBuilder sb = new StringBuilder();
		
		sb.append("<html>");
		sb.append("<head>");
		sb.append("<title>결과화면</title>");
		sb.append("<style>");
		sb.append("*{");
		sb.append("	margin: 8px;");
		sb.append("}");
		sb.append("</style>");
		sb.append("</head>");
		sb.append("<body>");
		
		sb.append("<h2>개인 정보 출력</h2><br>");
		sb.append("이름 : " + request.getParameter("name") + "<br>");
		sb.append("아이디 : " + request.getParameter("id") + "<br>");
		sb.append("암호 : " + request.getParameter("pw") + "<br>");
		sb.append("성별 : " + request.getParameter("sex") + "<br>");
		sb.append("공지메일 : " + notice + "<br>");
		sb.append("광고메일 : " + ad + "<br>");
		sb.append("배송 확인 메일 : " + check + "<br>");
		sb.append("직업 : " + request.getParameter("job") + "<br>");
		
		
		
		sb.append("</body>");
		sb.append("</html>");
		out.println(sb);
		out.flush();
		out.close();
	}
	
	public void destroy() {
		
	}
}
