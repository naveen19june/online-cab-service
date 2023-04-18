<%@page import="java.sql.*"%>

<%
   
   String firstname =   request.getParameter("Name");
   String email =       request.getParameter("email");
   
   String amount =      request.getParameter("amount");
 
  
   
   
   
   Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new1","root","root");
       Statement st=con.createStatement();
       int i=st.executeUpdate("insert into wallet(name,email,amount)values('"+firstname+"','"+email+"','"+amount+"')");
   if(i>0)
   {
       %>
       <script language="javascript">
           alert("Just Confirmed the details for Adding money in your Wallet..! ");
           window.location.href="addwallett.jsp?tr=<%=firstname%>&tr1=<%=email%>&tr2=<%=amount%>";
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