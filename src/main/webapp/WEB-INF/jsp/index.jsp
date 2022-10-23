<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<jsp:include page="header.jsp"></jsp:include>

 <div class="container mt-3">
 <h4>Spring Boot Crud with Mysql</h4>
 
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="text" class="form-control" name="username">
   
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="password">
  </div>

  <button type="button" class="btn btn-primary Login">Login</button>

 
 
 
 
 </div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
   
   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" ></script> 
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jsencrypt/2.3.1/jsencrypt.min.js" async></script>
    <script>
$(document).ready(function() {


	   let publicKey = "MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAmvGIt3C2l9mIBIiBshovM3RJ6AFLfenbcgpMlEHPbURDEEKIF3DrQtGEcxfYRqTWrRvuBd2VHHLZsXc3FQOnFkdwyGq39cg5yibU9jonDA+swOMqmRRNApIiWPmeTbNsa4dzbW/Ovdo4MJB0DiW7ykTbQUBL9PO5g4c/1RLxcHXj1wVdzfWLW8q341Y7E4XhSVHlBjzza7qOj/rtZj2c+K+84xaGVpPYXXVqM9yjvgnn1btRbrbJmcXbXFDBbm7afM69APgflAjNGwhB3zfP0oNL6d6E1bf6CdNZn2V+NqG97OsJnoNgNK8puge/KMRaovVLlUCYGl237qQ/QOHsLBK1eAZsDWgupo2Lgy8xHsEOotW74q8Oi6Lrm/K4i2/rbVuqdUOtbV5728+xd36hyQ7qSg6op4cB23MkMD0Y3lxmUnHvKPEtPRerRteeyw/aL4/cRlis5xZPRu/Tuwg3scFEalibd7CKkUqifO7QCKcmvyUqycbH5tTLVIvpI3UmdmU/jgoiAxn5O/Cm1VhO2D7J6sfalvp0B3b3CmmG3JVfE986V19VgGid25zn2wAWlJmrCQ1l54vjXk5a5IjGXx1W5xoJgNsHpf9BXqv/SIH4hCbBrLWReLYtigtwGfV45Zf8UzvkNE1NOFcXD5PPvTmlvRJ+0ggU79W+IHrTE20CAwEAAQ==";



     
     $(".Login").on('click',function(){


    	 let RSAEncrypt = new JSEncrypt();
         RSAEncrypt.setPublicKey(publicKey);
         let encryptedPass = RSAEncrypt.encrypt($(`input[name="password"]`).val());
         let encryptedUsername = RSAEncrypt.encrypt($(`input[name="username"]`).val());

         console.log('encryptedPass:::::::::',encryptedPass)
    	 

    		$.ajax({
    			  type: "POST",
    			  contentType: "application/json; charset=utf-8",
    			  url: "/decrypt",
    			  data: JSON.stringify({
    				   username: encryptedUsername,
    		           password: encryptedPass
    				  }),
    			  success: function(response){
    					console.log('SUCCESS:::::::', response)
    					alert('SUCCESS')		  
    				  },
    			  dataType: "json"
    			});
    	 
       })
	

});
</script>
    
  </body>
</html>