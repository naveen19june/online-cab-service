<%@page import="java.sql.*"%>

<%
   
   String name =   request.getParameter("Name");
   String email =       request.getParameter("email");
   String contact_no =       request.getParameter("contact_no");
   
   
   String password =       request.getParameter("password");
   String confirm_password =      request.getParameter("confirm_password");
  
   
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new1","root","root");
       Statement st=con.createStatement();
       int i=st.executeUpdate("insert into viewuser(name,email,contact_no,password,confirm_password)values('"+name+"','"+email+"','"+contact_no+"','"+password+"','"+confirm_password+"')");
   if(i>0)
   {
       %>
       <script language="javascript">
           alert("You have successfully Register");
           window.location.href="loginform.jsp";
           </script>
           <% }
else{
%>
       <script language="javascript">
           alert("Sorry try again");
           window.location.href="registration.jsp";
           </script>
           <%

   }
%>