<%@page import="java.sql.*"%>
<%
   String DriverName=request.getParameter("DriverName");
   String DriverNumber=request.getParameter("DriverNumber");
   
   
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new1","root","root");
       Statement stmt=con.createStatement();
       int i=stmt.executeUpdate("insert into adddriver(DriverName,DriverNumber)values('"+DriverName+"','"+DriverNumber+"')");
       
       
       if(i>0)
{
    %>
       <script language="javascript">
           alert("Added Succesfully");
           window.location.href="driver.jsp";
           </script>
           <% }
else{
%>
       <script language="javascript">
           alert("Sorry try again");
           window.location.href="driver.jsp";
           </script>
           <%
}

%>