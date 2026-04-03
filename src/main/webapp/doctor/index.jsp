<%@page import="com.entity.Doctor"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Dashboard</title>
<%@include file="../component/all_css_js.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<c:if test="${empty doctObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>
	<%@include file="../component/navbar_doctor.jsp"%>

	<%
	Doctor d = (Doctor) session.getAttribute("doctObj");
	AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
	%>

	<div class="container p-5">
		<p class="text-center fs-3">Doctor Dashboard</p>
		<c:if test="${not empty errorMsg}">
			<p class="fs-4 text-center text-danger">${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>
		<c:if test="${not empty succMsg}">
			<p class="fs-4 text-center text-success">${succMsg}</p>
			<c:remove var="succMsg" scope="session" />
		</c:if>

		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Total Appointment<br><%=dao.getAllAppointmentByDoctorLogin(d.getId()).size()%>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
