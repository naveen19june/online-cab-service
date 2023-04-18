<%@page import="java.sql.*"%>

<%
   String login=request.getParameter("login");
   String password=request.getParameter("password");
   
   
   Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new1","root","root");
       PreparedStatement ps=con.prepareStatement("select * from viewuser where email=? and password=?");
ps.setString(1,request.getParameter("login"));
ps.setString(2,request.getParameter("password"));
ResultSet rs=ps.executeQuery();
   if(rs.next())
     {
         session.setAttribute("email",login);
         String name=rs.getString("name");
         session.setAttribute("name",name);
         
    %>
       <script language="javascript">
           alert("You have successfully login");
           window.location.href="addwallett.jsp";
           </script>
           <% }
else{
%>
       <script language="javascript">
           alert("Sorry try again");
           window.location.href="loginform.jsp";
           </script>
           <%
}


%>
       
       