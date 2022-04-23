 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript">
 function getPin()
 {
	 var v=document.selleracc.pincode.value;
	 var url="fetchCity.jsp?pincode="+v;
	 request=new XMLHttpRequest();
	 try
	 {
		request.open("GET",url,false);
		request.send();
		var val=request.responseText;
		
		document.selleracc.city.value=val;
	 }
	 catch(e)
	 {
		 alert(v);
	 }
	 
 }
</script>


<div class="container">
    <h2>Registration Form</h2>
	<div class="col-md-10">
	<div class="row">
				<form name="selleracc" method="post" action="saveSellerD.jsp">
					<div class="col-md-10">
						<div class="row">
						<div class="col-md-6 form-group">
						<label>Address</label>
						</div>
						</div>
						<div class="row">
							<div class="col-md-6 form-group">
								<input type="text" placeholder="Address Line 1" name="add1" class="form-control">
							</div>
							<div class="col-md-6 form-group">
								<input type="text" placeholder="Address Line 1" name="add2" class="form-control">
							</div>
						</div>						
						<br/>
							<div class="row">
							<div class="col-sm-6 form-group">
								<input type="text" placeholder="State" name="state" class="form-control">
							</div>	
							<div class="col-sm-3 form-group">
								<input type="text" placeholder="City" name="city" class="form-control">
							</div>	
							<div class="col-sm-3 form-group">
								<input type="text" placeholder="Pin Code" name="pincode" class="form-control">
							</div>		
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Bussiness Name</label>
								<input type="text" placeholder="Enter Bussiness Name" name="bussname" class="form-control">
							</div>			
						</div>		
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Account Number</label>
								<input type="text" placeholder="Enter Account Number" name="accno" class="form-control">
							</div>			
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>IFSC Code</label>
								<input type="text" placeholder="Enter IFSC Code" name="ifsccode" class="form-control">
							</div>			
						</div>	
						<br/>			
			         <button type="submit" class="btn btn-primary">Submit</button>					
					</div>
				</form> 
				</div>
	</div>
	</div>