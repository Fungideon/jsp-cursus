<!doctype html>
<html>
    <head>
        <title>Gello</title>
    </head>
    <body>
    	<table border="1">
		<%
			for(int i = 1; i <= 10; i++){
				out.write("<tr>");
				for(int j = 1; j <= 10; j++){
					out.write("<td>" + i*j + "</td>");
				}
				out.write("</tr>");
			}
		%>
		</table>
    </body>
</html>