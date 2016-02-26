<!doctype html>
<html>
    <head>
        <title>Gello</title>
        <% int seconden = 60; 
        	int uur = seconden * 60;
        	int dag = uur * 24;
        	int week = dag * 7;
        	int jaar = week * 52;
        %>
    </head>
    <body>
        <table border="1">
        	<thead>
                <tr>
                    <th>Eenheid</th>
                    <th>Aantal Seconden</th>
                </tr>
            </thead>
            <tbody>
	            <tr>
	                <td>Minuut</td>
	                <td><%=seconden %></td>
	            </tr>
	            <tr>
	                <td>Uur</td>
	                <td><%=uur %></td>
	            </tr>
	            <tr>
	                <td>Dag</td>
	                <td><%=dag %></td>
	            </tr>
	            <tr>
	                <td>Week</td>
	                <td><%=week %></td>
	            </tr>
	            <tr>
	                <td>Jaar</td>
	                <td><%=jaar %></td>
	            </tr>
            </tbody>
        </table>
    </body>
</html>