<%-- 
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
<title>Book Shop</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
	ArrayList<BacSyBean> lsThanhVien = 	(ArrayList<BacSyBean>)request.getAttribute("dsbacsy");
	
	hoatdongbean hd = (hoatdongbean)request.getAttribute("hoatdong");
	
	DateFormat df = new SimpleDateFormat ("yyyy-MM-dd'T'hh:mm");
	%>
	<div class="col-sm-8 offset-sm-2 my-5">
		<div class="card">
		  <div class="card-header bg-primary text-white">
		  	Tạo mới / Chỉnh sửa hoạt động
		  </div>
		  <div class="card-body">
		  	<form action="danhsachhoatdongcontroller" method="POST">
		  		<% if (hd != null) { %>
		  		<input type="hidden" name="maHD" value="<%= hd.getMaHD() %>" />
		  		<% } %>
		  		<div class="form-group">
				    <label for="">Tên hoạt động</label>
				    <input required name="tenHD" value="<%= hd != null ? hd.getTenHD() : "" %>" type="text" class="form-control" id="txtTenHD" placeholder="">
				</div>
				<div class="form-group">
				    <label for="">Mô tả</label>
				    <input required name="moTa" value="<%= hd != null ? hd.getMoTaHD() : "" %>" type="text" class="form-control" id="txtMoTaHD" placeholder="">
				</div>
				<div class="row">
				  <div class="form-group col-sm-6">
				    <label for="">Ngày giờ bắt đầu</label>
				    <input required name="dateBD" value="<%= hd != null ? df.format(hd.getNgayGioBD())  : "h" %>" type="datetime-local" 	class="form-control" id="dateBD" placeholder="">
				  </div>
				  <div class="form-group col-sm-6">
				    <label for="">Ngày giờ kết thúc</label>
				    <input required name="dateKT" value="<%= hd != null ? df.format(hd.getNgayGioKT()) : "h" %>" type="datetime-local" class="form-control" id="dateKT" placeholder="">
				  </div>
				</div>
				
				<div class="row">
				  <div class="form-group col-sm-6">
				    <label for="">Số lượng tối thiểu</label>
				    <input required name="soLuongTT" value="<%= hd != null ? hd.getSoLuongTT() : "1" %>" 					type="number" min="1" max="200" class="form-control" id="soLuongTT" placeholder="">
				  </div>
				  <div class="form-group col-sm-6">
				    <label for="">Số lượng tối đa</label>
				    <input required name="soLuongTD" value="<%= hd != null ? hd.getSoLuongTD() : "1" %>" 					type="number" min="1" max="200" class="form-control" id="soLuongTD" placeholder="">
				  </div>
				</div>
				
				<div class="form-group">
				    <select class="form-control" name="trangThai" id="trangThai">
				    	<option value="Đang mời đăng ký" <%= hd != null && 	hd.getTrangThai().equals("Đang mời đăng ký" ) ? "selected" : ""%> >Đang mời đăng ký</option>
				    	<option value="Đã kết thúc" <%= hd != null && 	hd.getTrangThai().equals("Đã kết thúc" ) ? "selected" : ""%> >Đã kết thúc</option>
				    	<option value="Hết hạn đăng ký" <%= hd != null && hd.getTrangThai().equals("Hết hạn đăng ký" ) ? "selected" : ""%> >Hết hạn đăng ký</option>
				    	<option value="Trưởng đoàn tự hủy" <%= hd != null && hd.getTrangThai().equals("Trưởng đoàn tự hủy" ) ? "selected" : ""%> >Trưởng đoàn tự hủy</option>
				    </select>
				</div>
				<div class="form-group">
				    <label for="">Thời hạn đăng ký</label>
				    <input required name="thoiHan" value="<%= hd != null ? hd.getThoiHanDK() : "" %>" 					type="date" class="form-control" id="thoiHan" placeholder="">
				</div>
				<div class="form-group">
					<label for="">Trưởng đoàn</label>
				    <select class="form-control" name="truongDoan" id="truongDoan">
				    	<% for(thanhvienbean tv: lsThanhVien){ %>
				    	<option value="<%= tv.getMaTV() %>" <%= hd != null && tv.getMaTV() == hd.getMaTV() ? "selected" : "" %>><%= tv.getHoTen() %></option>
				    	<% } %>
				    	
				    </select>
				</div>
				<button id="<%= hd != null ? "btnEdit" : "btnCreate" %>" type="submit" name="<%= hd != null ? "btnEdit" : "btnCreate" %>" class="btn btn-info">Hoàn thành</button>
				<button id="btnCancel" type="submit" name="btnCancel" class="btn btn-danger">Hủy</button>
		  	</form>
		  </div>
		</div>
	</div>
</body>
</html> --%>