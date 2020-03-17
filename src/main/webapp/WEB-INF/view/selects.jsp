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
	 <link rel="stylesheet" type="text/css"
	href="/resource/css/index3.css" />
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="/resource/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
	function add() {
		$.post("add",function(){
			location.href="add";
		})
	}
	
	function update(id) {
		location.href="update?id="+id;
	}
	
</script>
  

</head>
<body>
<form action="selects" method="post">
	付款单号：<input type="text" name="fhzh">
	付款单类型：<input type="text" name="fkdlx">
	经办人：<input type="text" name="jbr">
	<br>
	所属部门：<input type="text" name="ssbm">
	合同与订单：<input type="text" name="htydd">
	给付单位：<input type="text" name="gfdw">	<br>
	给付单位开户行：<input type="text" name="gkh">
	账号：<input type="text" name="zh">
	接收部门：<input type="text" name="jsbm">	<br>
	接收人：<input type="text" name="jsr">
	付款事由：<input type="text" name="fksy">
	付款金额：<input type="text" name="hkje">	<br>
	备注：<input type="text" name="bz">
	请款类型：<input type="text" name="qklx">
	付款开始结束日期：<input type="text" name="f1">-<input type="text" name="f2">
	<input type="submit" value="查询">
	
</form>
<button onclick="add()">添加</button>
	<table id="center">
		<tr>
		<td>ID</td>
			<td>付款单号</td>
			<td>经办人</td>
			<td>合同与订单</td>
			<td>付款单类型</td>
			<td>所属部门</td>
			<td>请款类型</td>
			<td>付款日期</td>
			<td>给付单位</td>
			<td>给付单位开户行</td>
			<td>账号</td>
			<td>接收部门</td>
			<td>付款事由</td>
			<td>付款图片上传</td>
			<td>备注</td>
			<td>接收人</td>
			<td>付款金额</td>
		</tr>
		<c:forEach items="${info.list }" var="pay" varStatus="i">
			<tr>
				<td>${i.count }</td>
				<td>${pay.fhzh }</td>
				<td>${pay.jbr }</td>
				<td>${pay.htydd }</td>
				<td>${pay.fkdlx }</td>
				<td>${pay.ssbm }</td>
				<td>${pay.qklx }</td>
				<td>
					<fmt:formatDate value="${pay.fkrq }" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>${pay.gfdw }</td>
				<td>${pay.gkh }</td>
				<td>${pay.zh }</td>
				<td>${pay.jsbm }</td>
				<td>${pay.fksy }</td>
				<td>${pay.fktp }</td>
				<td>${pay.bz }</td>
				<td>${pay.jsr }</td>
				<td>${pay.hkje }</td>
				<td>
					<button onclick="update(${par.id})">修改</button>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="100">
				<jsp:include page="/WEB-INF/view/pages.jsp"></jsp:include>
			</td>
		</tr>
	</table>
	
</body>
<script type="text/javascript">

function goPage(page) {
	$("#center").load("/selects?page="+page)
		
}
	
</script>
</html>