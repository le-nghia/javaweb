
<%@page import="LN.Bo.BanhAnBo"%>
<%@page import="LN.Bean.BanhAnBean"%>
<%@page import="LN.Dao.LoaiBanhAn"%>
<%@page import="LN.Bean.BacSyBean"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.text.DateFormat" %>
<%@page import="java.text.SimpleDateFormat" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Trang Chủ</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="css/chiakhung.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<style type="text/css">
		
		html,body{
			
			background: #b3b2b2;
			margin:0;
		   	padding:0;
		   	height:100%;
		}
		.menu ul {
			  background: #8AD385;
			  width: 200px;
			  padding: 0;
			  list-style-type: none;
			  text-align: left;
			  border-width: 1px;
			  border-style: solid;
			  border-color: #100e0f;
			}
			.menu li {
			  width: auto;
			  height: 40px;
			  line-height: 40px;
			  border-bottom: 1px solid #e8e8e8;
			  padding: 0 1em;
			}
			.menu li a {
			 text-decoration: none;
			 color: #333;
			 font-weight: bold;
			 display: block;
			}
			.menu li:hover {
			 background: #CDE2CD;
			}
			
			/*==cột #post==*/
			.post {
			  width: 750px;
			  
			  float: right;
			}
			
			/*==cột #sidebar==*/
			.sidebar {
			  width: 300px;
			  
			  float: left;
			}
			.head {
				 height: 1000px; 
			}
			.fooder1{
				position:absolute;
			    bottom:0;
			    width:100%;
			    height:60px;   /* Height of the footer */
			    background:#6cf;
				}
			@media (min-width: 992px) {
				.post .sidebar {
				 position: relative;
			     min-height: 1px;
			     padding-right: 15px;
			     padding-left: 15px;
				}
			}
			.row1 {
				  display: flex;
				  flex-wrap: wrap;
				  text-align: center;
				  margin-right: -10px;
				  margin-left: -10px;
				}
			.row>[class^=col-] {
				    padding-left: 5px;
				    padding-right: 5px;
				}
				
			
	</style>
	
	
</head>
<body>
	<%  ArrayList<BacSyBean> dsbacsy = (ArrayList<BacSyBean>)request.getAttribute("dsbacsy");%>
	<%  ArrayList<BanhAnBean> bAn = (ArrayList<BanhAnBean>)request.getAttribute("dsbAn");
		int n = bAn.size();
		DateFormat df = new SimpleDateFormat ("yyyy-MM-dd hh:mm");
	%>
	<% ArrayList<BanhAnBo> bAnbo = (ArrayList<BanhAnBo>)request.getAttribute("dsbAn"); %>
	
	<nav class="navbar navbar-expand-lg bg-info text-white">
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav">
	      <li class="nav-item active">
	        <a class="nav-link text-white" href="Controller">Doctor</a>
	      </li>
	      <li class="nav-item active">
	        <a class="nav-link text-white" href="Controller">Examine</a>
	      </li>
	    </ul>
	    <div style="float: right:">
	       	<a class="nav-link text-white" href="DangNhap.jsp">Đăng Nhập</a>
	    </div>
	  </div>
	</nav>
	
	<div class="container my-5 head">
	<section>
	<div style=" width: 200px;" class=".col-lg-3 .col-lg-6">
		
		<form action="Controller?key=" method="post">
			<input name="timkiem" type="text" placeholder="Tìm mã bệnh án..." class="form-control"><br>
			<input name="btn" type="submit" value="Search" class="btn-primary">
			
		</form>
	</div>
			
		<div class="row">
		
			<div class="col-12">
				<a href="#" class="btn btn-primary float-right"><i class="fa fa-plus"></i> Tạo mới</a>
			</div>
			
			<!-- Mục Hiển Thị Bác Sỹ -->
			<div class="sidebar menu .col-lg-3 .col-lg-6" >
				<ul>
				<li><h3 style="text-align: center;"><a href="Controller">Doctor</a></h3></li>
					<%for (BacSyBean ds: dsbacsy) {%>
					<li style="width: 200px;">
						<a href="Controller?mh=<%=ds.getDoctorID() %>"><%=ds.getDoctorlName() %> </a>
					</li>
					<%} %>
				</ul>
			</div>
			
			<!-- Mục Hiển Thị Bệnh Án -->
			<div class="post">
				<h3 style="text-align: center;">Examine</h3>
				<table class="table ">
					
					<thead class="bg-info text-white">
						<tr>
							<td>PatientID</td>
							<td>DoctorID</td>
							<td>ExamineDate</td>
							<td>Result</td>
							<td>Treatments</td>
						</tr>
					</thead>
					
					<tbody>
						<% for(int i=0;i<n;i++) { %>
						<%BanhAnBean s = bAn.get(i); %>
							<tr>
								<td><%= bAn.get(i).getPatientID()%></td>
								<td><%= bAn.get(i).getDoctorID() %></td>
								<td><%= bAn.get(i).getExamineDate() %></td>
								<td><%= bAn.get(i).getResult() %></td>
								<td><%= bAn.get(i).getTreatments() %></td>
							</tr>
							<%	i++;
								if ( i<n ) { %>
							<tr>
								<td><%= bAn.get(i).getPatientID()%></td>
								<td><%= bAn.get(i).getDoctorID() %></td>
								<td><%= bAn.get(i).getExamineDate() %></td>
								<td><%= bAn.get(i).getResult() %></td>
								<td><%= bAn.get(i).getTreatments() %></td>
							</tr>
							<%} %>
							<%	i++;
								if ( i<n ) { %>
							<tr>
								<td><%= bAn.get(i).getPatientID()%></td>
								<td><%= bAn.get(i).getDoctorID() %></td>
								<td><%= bAn.get(i).getExamineDate() %></td>
								<td><%= bAn.get(i).getResult() %></td>
								<td><%= bAn.get(i).getTreatments() %></td>
							</tr>
							<%} %>
						<% } %>
					</tbody>
					
				</table>
			</div>
		</div>
		</section>	
	</div>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script>
		<% if(request.getAttribute("deleteFalse") != null) { %>
		alert("<%= request.getAttribute("deleteFalse") %>");
		<% } %>
	</script>
</body>

</body>
</html>