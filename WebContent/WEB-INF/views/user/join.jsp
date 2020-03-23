<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>�̴� ������Ʈ</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<script>
	function checkUserIdExist(){
		
		var user_id = $("#user_id").val()
		
		if(user_id.length == 0){
			alert("���̵� �Է����ּ���")
			return
		}
		
		$.ajax({
			url: "${root}user/checkUserIdExist/" + user_id,
			type: "get",
			dataType: "text",
			success: function(result){
				if(result.trim() == "true"){
					alert("����� �� �ִ� ���̵��Դϴ�")
					$("#userIdExist").val("true")
				}else{
					alert("����� �� ���� ���̵��Դϴ�")
					$("#userIdExist").val("false")
				}
			}
		})
	}
	
	function resetUserIdExist(){
		$("#userIdExist").val("false")
	}
</script>
<body>

	<c:import url="/WEB-INF/views/include/top_menu.jsp" />
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
						<form:form action="${root }user/join_pro" method="post"
							modelAttribute="joinUserBean">
							<form:hidden path="UserIdExist" />
							<div class="form-group">
								<form:label path="user_name">�̸�</form:label>
								<form:input path="user_name" class="form-control" />
								<form:errors path="user_name" style="color:red" />
							</div>
							<div class="form-group">
								<form:label path="user_id">���̵�</form:label>
								<div class="input-group">
									<form:input path="user_id" class="form-control"
										onkeypress="resetUserIdExist()" />
									<div class="input-group-append">
										<button type="button" class="btn btn-primary"
											onclick="checkUserIdExist()">�ߺ�Ȯ��</button>
									</div>
								</div>
								<form:errors path="user_id" style="color:red" />
							</div>
							<div class="form-group">
								<form:label path="user_pw">��й�ȣ</form:label>
								<form:password path="user_pw" class="form-control" />
								<form:errors path="user_pw" style="color:red" />
							</div>
							<div class="form-group">
								<form:label path="user_pw2">��й�ȣ Ȯ��</form:label>
								<form:password path="user_pw2" class="form-control" />
								<form:errors path="user_pw2" style="color:red" />
							</div>
							<div class="form-group">
								<div class="text-right">
									<form:button class="btn btn-primary">ȸ������</form:button>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/bottom_info.jsp" />

</body>
</html>
