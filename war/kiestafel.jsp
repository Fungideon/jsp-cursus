<!doctype html>
<html>
    <head>
        <title>Gello</title>
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
		<h3>Kies een tafel</h3>
		<form action="kiestafel.jsp" methode="get">
			<input type="text" name="getal">
			
			<p class="fout"><%=foutboodschap%></p>
			
			<input type="submit" name="knop" value="Ok">
		</form>
		<%
			if (showTable){
				out.println("<h3>De tafel van " + tafelGetal + "</h3>");
				for(int i = 1; i <= 10; i++){
					out.write(i + " x " + tafelGetal + " = " + i*tafelGetal + "<br>");
				}
			}
		%>
    </body>
</html>