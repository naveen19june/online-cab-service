<%@page import="java.sql.*"%>
<%
   String CabName=request.getParameter("CabName");
   String CabNumber=request.getParameter("CabNumber");
   String CabType=request.getParameter("CabType");
   
   
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new1","root","root");
       Statement stmt=con.createStatement();
       int i=stmt.executeUpdate("insert into addcab(CabName,CabNumber,CabType)values('"+CabName+"','"+CabNumber+"','"+CabType+"')");
       
       
       if(i>0)
{
    %>
       <script language="javascript">
           alert("Added Succesfully");
           window.location.href="cab.jsp";
           </script>
           <% }
else{
%>
       <script language="javascript">
           alert("Sorry try again");
           window.location.href="cab.jsp";
           </script>
           <%
}

%>