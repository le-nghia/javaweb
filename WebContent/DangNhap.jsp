<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="./Css/Nen.css" rel="stylesheet">
	<style type="text/css">
	body{
		background-image: url("img/a1.jpg");
		width: 100%;
		margin: 0 auto;
	}
		.Sua{
		    width: 320px;
			border: 5px solid #6bb9f0;
		    background: #f7f7f7;
		    padding: 15px;
		    height: 370px;
		    margin: 0 auto;
		    margin-top: 205px;
		    position: relative;
		} 
	</style>
<title>Đăng Nhập</title>
</head>
<body>
	
	<div class="container">
		<!-- <form method="post" action="../ThemSP" enctype= "multipart/form-data">
		  Họ tên: <input type="text" name="txthoten" value=""> <br>
		  Địa chỉ: <input type="text" name="txtdiachi" value=""> <br>
		  <input type="file" name="txtfile"><br>
		  <input type="submit"> 
		 </form>  -->
		 
		 <div style="margin-bottom: 100px; " ></div>
			<div class="Sua">
				<form style="margin-bottom: 10px;" method="post" action="Controller" enctype= "multipart/form-data"><h5 style="text-align: center;">Đăng Nhập</h5>
					<div style="margin-bottom: 10px; padding: 8px 12px;border-radius: 4px;">
						<label>Tài Khoản: </label>
						<input type="text" name="txthoten" class="form-control input-lg" placeholder="Nhập tài khoản" required="" autofocus="" value="">
					</div>
					<div style="margin-bottom: 10px; padding: 8px 12px;border-radius: 4px;">
						<label>Mật Khẩu: </label>
						<input type="password" name="txtdiachi" class="form-control input-lg" placeholder="Nhập mật khẩu" required="" autofocus="" value="">
					</div>
					<button style="width: 100%; border: 1px solid transparent; padding: 8px 12px;border-radius: 4px; margin: 40px auto;" type="submit" class="btn-primary">Đăng Nhập</button>
					
				</form>
			</div>
	</div>
	
	
</body>
</html>