<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h2>Product Listing</h2>
	<div class="col-md-10">
	<div class="row">
				<form method="post" action="saveProduct.jsp">
					<div class="col-md-10">
						<div class="row">
						<div class="col-md-6 form-group">
						<label>Product Name</label>
						</div>
						</div>
						<div class="row">
							<div class="col-md-6 form-group">
								<input type="text" placeholder="Product Name" name="pname" class="form-control">
							</div>
						</div>						
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Description</label>
								<textarea  placeholder="Description" name="pdes" class="form-control"></textarea>
							</div>			
						</div>		
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Categoery</label>
							</div>			
						</div>
							<div class="row">
							<div class="col-sm-6 form-group">
								<select name="pcat" class="form-control">
								<option value="Mobile">Mobile</option>
								<option value="Laptop">Laptop</option>
								<option value="Consoles">Consoles</option>
								</select>
							</div>			
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Rent per Month</label>
								<input type="text" placeholder="Enter rupees" name="pprice" class="form-control">
							</div>			
						</div>	
						<div class="row">
						<img id="output" width="200" />
							<div class="col-sm-6 form-group">
								<label>Product Image</label>
								<input type="file" name="image" accept="image/*" id="file" onclick="loadfile(event)" class="form-control">
							</div>			
						</div>
						<br/>			
			         <button type="submit" class="btn btn-primary">Submit</button>					
					</div>
				</form> 
				</div>
	</div>
	</div>
	</body>
</html>