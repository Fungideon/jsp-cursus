<!doctype html>
<html>
    <head>
        <title>Gello</title>
        <%@ page import="java.lang.Math" %>
    </head>
    <body>
    	<%
	    	boolean showTable = false;
			String invoer;
			int tafelGetal = 0;
			String foutboodschap = "";
			if(request.getParameter("knop") != null){
				invoer = request.getParameter("getal");
				try {
					tafelGetal = Integer.parseInt(invoer);
					showTable = true;
				} catch (NumberFormatException e){
					foutboodschap = "U moet een geheel getal invoeren!";
				}
			}
    	%>
    		<p class="fout"><%=foutboodschap%></p>
    	<%
			if(showTable){
				double fahrenheit = tafelGetal * 1.8 + 32;
				int roundedFahrenheit = (int)Math.round(fahrenheit);
				out.write(tafelGetal + " graden Celsius is " + 
						roundedFahrenheit + " graden Fahrenheit");
			}
		%>
		<br>
		klik <a href="graden.jsp">hier</a>  om terug te gaan naar de vorige pagina
    </body>
</html>