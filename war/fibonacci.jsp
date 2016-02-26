<!doctype html>
<html>
    <head>
        <title>Gello</title>
    </head>
    <body>
		<%
			long arg0 = 0L;
			long arg1 = 1L;
			long som = 0;
			long maxWaarde = 900000000000000000L;
			%>
			<%=arg1 %>
			<%
			for(int i = 0; som < maxWaarde; i++){
				som = arg0 + arg1;
				%>
				<%=som %>
				<%
				arg0 = arg1;
				arg1 = som;
			}
		%>
    </body>
</html>