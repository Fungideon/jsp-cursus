<!doctype html>
<html>
    <head>
        <title>Gello</title>
    </head>
    <body>
    <%@page import="com.jsp.opdrachten.Rekenmachine" %>
    <%
    		Rekenmachine r = new Rekenmachine();
    		String getaleen = "";
    		String getaltwee = "";
			String foutboodschap = "";
			if(request.getParameter("plus") != null
					||request.getParameter("minus") != null
					||request.getParameter("keer") != null
					||request.getParameter("deel") != null
					){try{
				if(request.getParameter("plus") != null){
					double resultaat = r.plus(request.getParameter("getaleen"), request.getParameter("getaltwee"));
					getaleen = "" + resultaat;
				}else if(request.getParameter("minus") != null){
					double resultaat = r.minus(request.getParameter("getaleen"), request.getParameter("getaltwee"));
					getaleen = "" + resultaat;
				}else if(request.getParameter("keer") != null){
					double resultaat = r.keer(request.getParameter("getaleen"), request.getParameter("getaltwee"));
					getaleen = "" + resultaat;
				}else if(request.getParameter("deel") != null){
					double resultaat = r.deel(request.getParameter("getaleen"), request.getParameter("getaltwee"));
					getaleen = "" + resultaat;
				}
				}catch(NumberFormatException e){
					foutboodschap = "Voer twee geldige getallen in";
				}
			}
    	%>
    	<form action="rekenmachine2.jsp" methode="get">
	    	<table style="background-color: lightblue;">
	    		<thead>
	    			<tr>
	    				<td style="text-align:center; background-color: red;" colspan="2">Rekenmachine</td>
	    			</tr>
	    		</thead>
	    		<tbody>
	    			<tr style="text-align:center;">
	    				<td>Eerste getal</td>
	    				<td>Tweede getal</td>
	    			</tr>
	    			<tr>
	    				<td><input type="text" name="getaleen" value="<%=getaleen%>"></td>
	    				<td><input type="text" name="getaltwee" value="<%=getaltwee%>"></td>
	    			</tr>
	    			<tr>
	    				<td style="text-align:center;" colspan="2">
	    					<input type="submit" name="plus" value="plus">
	    					<input type="submit" name="minus" value="minus">
	    					<input type="submit" name="keer" value="keer">
	    					<input type="submit" name="deel" value="deel">
	    				</td>
	    			</tr>
	    		</tbody>
	    	</table>
	    	<p class="fout"><%=foutboodschap%></p>
		</form>
    </body>
</html>