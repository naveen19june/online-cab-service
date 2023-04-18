<%@page import="java.sql.*"%>

<%
   
   String firstname =   request.getParameter("source");
   String email =       request.getParameter("destination");
   String phone =       request.getParameter("Children");
   String amount =      request.getParameter("test");
   String productinfo = request.getParameter("Adults");
   String date =         request.getParameter("Date");
   
   
   
   Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new1","root","root");
       Statement st=con.createStatement();
       int i=st.executeUpdate("insert into booking(source,destination,date,adults,children,fare)values('"+firstname+"','"+email+"','"+date+"','"+productinfo+"','"+phone+"','"+amount+"')");
   if(i>0)
   {
       %>
       <script language="javascript">
           alert("You have successfully Booked");
           window.location.href="test.jsp?tr=<%=firstname%>&tr1=<%=email%>&tr2=<%=phone%>&tr3=<%=amount%>&tr4=<%=productinfo%>&tr5=<%=date%>";
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