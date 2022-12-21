<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete.jsp</title>
</head>
<body>

<%

	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String mail = request.getParameter("mail");
	String cantidad = request.getParameter("cantidad");
	String categoria = request.getParameter("categoria");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
try{
	Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/compraticket", "root", "");
	Statement stm = cn.createStatement();
	
int valor= 0;
	
	ResultSet rsld= stm.executeQuery("SELECT MAX(id) FROM ticket");
	
	while(rsld.next()){
		
		int eid=rsld.getInt(1);
		
		String consulta="UPDATE ticket SET confirmado="+valor+" WHERE id="+eid+"";
		
		stm.executeUpdate(consulta);
	}
	
	//stm.executeUpdate("UPDATE ticket SET confirmar='1' ");
}catch (Exception e){
	out.print("Error al cargar los datos");
}

%>

<jsp:include page="comprar-tickets.html"></jsp:include>


</body>
</html>