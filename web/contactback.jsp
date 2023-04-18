<%@page import="java.sql.*"%>

<%
   
   String name =request.getParameter("name");
   String email =request.getParameter("email");
   String phone =request.getParameter("phone");
   String message =request.getParameter("message");
   
        Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new1","root","root");
       Statement st=con.createStatement();
       int i=st.executeUpdate("insert into contactform(name,email,phone,message)values('"+name+"','"+email+"','"+phone+"','"+message+"')");
   if(i>0)
   {
       %>
       <script language="javascript">
           alert("You have successfully submitted");
           window.location.href="contacts.jsp";
           </script>
           <% }
else{
%>
       <script language="javascript">
           alert("Sorry try again");
           window.location.href="Please try again";
           </script>
           <%

   }
%>