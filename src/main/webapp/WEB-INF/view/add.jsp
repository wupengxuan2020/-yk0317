<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 
 <link rel="stylesheet" type="text/css"
	href="/resource/css/bootstrap.min.css" />
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="/resource/js/bootstrap.min.js"></script>
<script type="text/javascript">
	var pay=$("form").serialize();
	$.post("add",{pay:pay},function(flag){
		if(flag){
			location.href="selects";
			alert("添加成功")
		}
			
		}
	})
	
</script>
  

</head>
<body>
	<form action="add" method="post">
		<table>
			<tr>
				<td>付款单号：</td>
				<td><input type="text" name="fhzh"></td>
			</tr>
			
			<tr>
				<td>财经人</td>
				<td><input type="text" name="cjr"></td>
			</tr>
			
			<tr>
				<td>合同与订单</td>
				<td><input type="text" name="htydd"></td>
			</tr>
			
			
			<tr>
				<td>	付款单类型：</td>
				<td><input type="text" name="fkdlx"></td>
			</tr>
			
			
			
			
			<tr>
				<td>所属部门</td>
				<td><input type="text" name="ssbm"></td>
			</tr>
			
			<tr>
				<td>请款类型</td>
				<td>
					<select name="qklx">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td>给付单位</td>
				<td><input type="text" name="gfdw"></td>
			</tr>
			
			<tr>
				<td>给付单位开户行</td>
				<td><input type="text" name="gkh"></td>
			</tr>
			
			<tr>
				<td>账号：</td>
				<td><input type="text" name="zh"></td>
			</tr>
			
			<tr>
				<td>接收部门</td>
				<td><input type="text" name="jsbm"></td>
			</tr>
			
			<tr>
				<td>付款事由</td>
				<td><input type="text" name="fksy"></td>
			</tr>
			
			<tr>
				<td>付款图片上传</td>
				<td><input type="file" name="file"></td>
			</tr>
			
			<tr>
				<td>备注</td>
				<td><input type="text" name="bz"></td>
			</tr>
			<tr>
				<td>接收人</td>
				<td><input type="text" name="jsr"></td>
			</tr>
			<tr>
				<td>付款金额</td>
				<td><input type="text" name="hkje"></td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="提交">
				</td>
			</tr>
		</table>
		
	</form>
</body>
</html>