<%@ page import="java.util.*" %>
<%@ page import="java.security.*" %>

<%!
public boolean empty(String s)
	{
		if(s== null || s.trim().equals(""))
			return true;
		else
			return false;
	}
%>
<%!
	public String hashCal(String type,String str){
		byte[] hashseq=str.getBytes();
		StringBuffer hexString = new StringBuffer();
		try{
		MessageDigest algorithm = MessageDigest.getInstance(type);
		algorithm.reset();
		algorithm.update(hashseq);
		byte messageDigest[] = algorithm.digest();
            
		

		for (int i=0;i<messageDigest.length;i++) {
			String hex=Integer.toHexString(0xFF & messageDigest[i]);
			if(hex.length()==1) hexString.append("0");
			hexString.append(hex);
		}
			
		}catch(NoSuchAlgorithmException nsae){ }
		
		return hexString.toString();


	}
%>
<% 	
	String merchant_key="rjQUPktU";
	String salt="e5iIg1jwi8";
	String action1 ="";
	String base_url="https://test.payu.in";
	int error=0; 
        String udf2="";
	String hashString="";
	
 

	
	Enumeration paramNames = request.getParameterNames();
	Map<String,String> params= new HashMap<String,String>();
    	while(paramNames.hasMoreElements()) 
	{
      		String paramName = (String)paramNames.nextElement();
      
      		String paramValue = request.getParameter(paramName);

		params.put(paramName,paramValue);
	}
	String txnid ="";
	if(empty(params.get("txnid"))){
		Random rand = new Random();
		String rndm = Integer.toString(rand.nextInt())+(System.currentTimeMillis() / 1000L);
		txnid=hashCal("SHA-256",rndm).substring(0,20);
	}
	else
		txnid=params.get("txnid");
        udf2 = txnid;
	String txn="abcd";
	String hash="";
	String hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
	if(empty(params.get("hash")) && params.size()>0)
	{
		if( empty(params.get("key"))
			|| empty(params.get("txnid"))
			|| empty(params.get("amount"))
			|| empty(params.get("firstname"))
			|| empty(params.get("email"))
			|| empty(params.get("phone"))
			|| empty(params.get("productinfo"))
			|| empty(params.get("surl"))
			|| empty(params.get("furl"))
			|| empty(params.get("service_provider"))
	)
			
			error=1;
		else{
			String[] hashVarSeq=hashSequence.split("\\|");
			
			for(String part : hashVarSeq)
			{
				hashString= (empty(params.get(part)))?hashString.concat(""):hashString.concat(params.get(part));
				hashString=hashString.concat("|");
			}
			hashString=hashString.concat(salt);
			

			 hash=hashCal("SHA-512",hashString);
			action1=base_url.concat("/_payment");
		}
	}
	else if(!empty(params.get("hash")))
	{
		hash=params.get("hash");
		action1=base_url.concat("/_payment");
	}


%>
<html>
    <style>
        .tab
        {
             border-collapse: separate;
             padding: 10px 30px 10px 30px;
            border: 1px solid #ddd;
        }
        input[type=text]
        {
    width: 100%;
    padding: 8px;
    margin: 8px;
    border: 2px solid #ddd;
}     

.button {
    background-color:orangered; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #ddd;
}
.button1:hover {
    background-color:orangered;
    color: white;
}
    </style>
<script>
var hash='<%= hash %>';
function submitPayuForm() {
	
	if (hash == '')
		return;

      var payuForm = document.forms.payuForm;
      payuForm.submit();
    }
</script>
<title>Welcome to ICAB</title>
<link rel="icon" href="icons/fav-icon.PNG" type="image/png" sizes="16x16">
<body onload="submitPayuForm();">
<% String fn=request.getParameter("name");%>
<% String fn1=request.getParameter("email");%>
<% String fn2=request.getParameter("tr2");%>
<% String fn3=request.getParameter("amount");%>
<% String fn4=request.getParameter("tr4");%>
<% String fn5=request.getParameter("tr5");%>

<form action="<%= action1 %>" method="post" name="payuForm">
    
    <div style="display:none;">
<input type="text" name="key" value="<%= merchant_key %>" />
      <input type="text" name="hash" value="<%= hash %>"/>
      <input type="text" name="txnid" value="<%= txnid %>" />
      <input type="text" name="udf2" value="<%= txnid %>" />
       <input type="text" name="service_provider" value="payu_paisa" />
       <input name="surl" value="http://localhost:8080/cab1/success.jsp?yn=<%=fn%>&yn1=<%=fn1%>&yn2=<%=fn2%>&yn3=<%=fn3%>&yn4=<%=fn4%>&yn5=<%=txnid%>&yn6=<%=fn5%>" />
      <input name="furl" value="http://localhost:8080/cab1/failed1.jsp?yn=<%=fn%>&yn1=<%=fn1%>&yn2=<%=fn2%>&yn3=<%=fn3%>&yn4=<%=fn4%>&yn5=<%=txnid%>&yn6=<%=fn5%>"/> 
    </div>
    <div style="padding: 20px; border: 1px solid #ddd; width: 40%;margin-left: 400px; text-align: left;">
        <center> <img src="icab.jpg" style="padding: 0px 10px 10px 10px; height: 150px;width: 200px" ></center>
    <table align='center' bgcolor='#3eed2a' width='100%' height='50'>
        <tr>
            <td style="text-align:center;color:#FFF">PAYMENT DETAILS </td>
        </tr>
    </table>
      <table class='tab'align="center" width="100%">
        <tr>
            <td>Name: </td>
          <td><input type='text' name="firstname" id="firstname" value="<%=fn%>" readonly/></td>
        </tr>
        <input type='hidden' name="date" value="<%=fn5%>" readonly />
        <tr>
          <td>E-mail: </td>
          <td><input type='text' name="email" id="email" value="<%=fn1%>" readonly /></td>
        </tr>
          <input type='hidden' name="phone" value="<%=fn2%>" readonly/>
         <tr>
          <td>Amount: </td>
          <td><input type='text' name="amount" value="<%=fn3%>" readonly/></td>        
        </tr>
          
          <input type='hidden' name="productinfo" value="<%=fn4%>" readonly />  
        </table><br/>
        <table align='center'>
        <tr>
          <% if(empty(hash)){ %>
          <td><button class="button button1">MAKE PAYMENT</button></td>
          <% } %>
        </tr>
      </table>
    </div>
    </form>


</body>

</html>