<!doctype html>
<html>
    <head>
        <title>Gello</title>
    </head>
    <body>
    <%@page import="com.jsp.opdrachten.Graden" %>
    <%
			String celsius = "";
			String fahrenheit = "";
			String foutboodschap = "";
			Graden g = new Graden();
			if(request.getParameter("knop") != null){
				try {
				if(request.getParameter("cel") != "" 
						&& request.getParameter("fah") != ""){
					foutboodschap = "Voer maar 1 waarde in";
				} else if(request.getParameter("cel") != ""){
					int fahr = g.naarFahr(request.getParameter("cel"));
					fahrenheit = "" + fahr;
				} else if(request.getParameter("fah") != ""){
					int cels = g.naarCels(request.getParameter("fah"));
					celsius = "" + cels;
				}
				} catch (NumberFormatException e){
					foutboodschap = "voer een geldige waarde in";
				}
			}
    	%>
    	<form action="gradenconverter2.jsp" methode="get">
	    	<table style="background-color:lightblue;">
	    		<thead>
	    			<tr>
	    				<td style="text-align:center; background-color: red;" colspan="2">Graden</td>
	    			</tr>
	    		</thead>
	    		<tbody>
	    			<tr style="text-align:center;">
	    				<td>Celsius</td>
	    				<td>Fahrenheit</td>
	    			</tr>
	    			<tr>
	    				<td><input type="text" name="cel" value="<%=celsius%>"></td>
	    				<td><input type="text" name="fah" value="<%=fahrenheit%>"></td>
	    			</tr>
	    			<tr>
	    				<td style="text-align:center;" colspan="2">
	    					<input type="submit" name="knop" value="Omrekenen">
	    				</td>
	    			</tr>
	    		</tbody>
	    	</table>
	    	<p class="fout"><%=foutboodschap%></p>
		</form>
    </body>
</html>