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
	var id=parom.id;
	$.post("update",{id:id},function(flag){
		if(flag){
			location.href="selects";
			alert("修改成功")
		}
			
		}
	})
	
</script>
  

</head>
<body>
	<form:form>
		<table>
			<tr>
				<td>付款单号：</td>
				<td>
					<form:input path="fhzh"/>
				</td>
			</tr>
			
			<tr>
				<td>财经人</td>
				<td>
					<form:input path="cjr"/>
				</td>
			</tr>
			
			<tr>
				<td>合同与订单</td>
				<td>
					<form:input path="htydd"/>
				</td>
			</tr>
			
			
			<tr>
				<td>	付款单类型：</td>
				<td>
					<form:input path="fkdlx"/>
				</td>
			</tr>
			
			
			
			
			<tr>
				<td>所属部门</td>
				<td>
					<form:input path="ssbm"/>
				</td>
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
				<td>
					<form:input path="gfdw"/>
				</td>
			</tr>
			
			<tr>
				<td>给付单位开户行</td>
				<td>
					<form:input path="gkh"/>
				</td>
			</tr>
			
			<tr>
				<td>账号：</td>
				<td>
					<form:input path="zh"/>
				</td>
			</tr>
			
			<tr>
				<td>接收部门</td>
				<td>
					<form:input path="jsbm"/>
				</td>
			</tr>
			
			<tr>
				<td>付款事由</td>
				<td>
					<form:input path="fksy"/>
				</td>
			</tr>
			
			<tr>
				<td>付款图片上传</td>
				<td><input type="file" name="file"></td>
			</tr>
			
			<tr>
				<td>备注</td>
				<td>
					<form:input path="bz"/>
				</td>
			</tr>
			<tr>
				<td>接收人</td>
				<td>
					<form:input path="jsr"/>
				</td>
			</tr>
			<tr>
				<td>付款金额</td>
				<td>
					<form:input path="hkje"/>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<form:button>提交</form:button>
				</td>
			</tr>
		</table>
		
	</form:form>
</body>
</html>