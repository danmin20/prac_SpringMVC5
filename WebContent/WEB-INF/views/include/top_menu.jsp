<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="root" value="/" />
<!-- ��� �޴� �κ� -->
<nav
	class="navbar navbar-expand-md bg-dark navbar-dark fixed-top shadow-lg">
	<a class="navbar-brand" href="${root }main">SoftCampus</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navMenu">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navMenu">
		<ul class="navbar-nav">
			<li class="nav-item"><a href="${root }board/main" class="nav-link">�����Խ���</a>
			</li>
			<li class="nav-item"><a href="${root }board/main" class="nav-link">���ӰԽ���</a>
			</li>
			<li class="nav-item"><a href="${root }board/main" class="nav-link">��ġ�Խ���</a>
			</li>
			<li class="nav-item"><a href="${root }board/main" class="nav-link">�������Խ���</a>
			</li>
		</ul>

		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a href="${root }user/login" class="nav-link">�α���</a>
			</li>
			<li class="nav-item"><a href="${root }user/join" class="nav-link">ȸ������</a>
			</li>
			<li class="nav-item"><a href="${root }user/modify" class="nav-link">��������</a></li>
			<li class="nav-item"><a href="${root }user/logout" class="nav-link">�α׾ƿ�</a>
			</li>
		</ul>
	</div>
</nav>