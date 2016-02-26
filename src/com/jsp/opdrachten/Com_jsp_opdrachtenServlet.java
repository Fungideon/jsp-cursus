package com.jsp.opdrachten;

import java.io.IOException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Com_jsp_opdrachtenServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/plain");
		resp.getWriter().println("Hello, world");
	}
}
