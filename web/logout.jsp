<META http-equiv="refresh" 
     content="<%=session.getMaxInactiveInterval()%>;URL=redirect url"/>
<%@ page import="java.sql.*"%>
<%
   session.setAttribute("email",null);
   session.invalidate();
   %>
   <script lang="javascript">
       alert("You have Logout successfully");
       window.location.href="index-6.html";
       </script>
       <%
           %>