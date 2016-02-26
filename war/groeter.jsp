<!doctype html>
<html>
    <head>
        <title>Gello</title>
        <%@ page import="java.util.Calendar" %>
    </head>
    <body>
		<% 
       	 	Calendar nu = Calendar.getInstance();
			String screentext = "";
        	int huidigUur = nu.get(Calendar.HOUR_OF_DAY);
        	if(huidigUur < 12 && huidigUur > 6){
				screentext = "Goede Morgen";
        	}else if(huidigUur >= 12 && huidigUur < 18){
        		screentext = "Goede Middag";
        	}else{
        		screentext = "Goede Avond";
        	}
		%>
		<%=screentext %>
		<%="het is nu " +huidigUur+ " Uur" %>
    </body>
</html>