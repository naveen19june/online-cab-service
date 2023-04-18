<%@page import="java.sql.*"%>
<%
   String username=request.getParameter("username");
   String password=request.getParameter("password");
   
   
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new1","root","root");
       PreparedStatement ps=con.prepareStatement("select * from admin where username=? and password=?");
       ps.setString(1,username);
       ps.setString(2,password);
       ResultSet rs=ps.executeQuery();
       if(rs.next())
{
    %>
       <script language="javascript">
           alert("You have successfully login");
           window.location.href="homepage.jsp";
           </script>
           <% }
else{
%>
       <script language="javascript">
           alert("Sorry try again");
           window.location.href="adminlogin.jsp";
           </script>
           <%
}

%>