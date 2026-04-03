<%@page import="com.entity.Appointment"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Comment</title>
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
	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Patient Comment</p>

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
						Appointment ap = dao.getAppointmentById(id);
						%>

						<form action="../updateStatus" method="post">
							<div class="mb-3">
								<label class="form-label">Patient Name</label> <input type="text"
									readonly value="<%=ap.getFullName()%>" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Diseases</label> <input type="text"
									readonly value="<%=ap.getDisease()%>" class="form-control">
							</div>

							<input type="hidden" name="id" value="<%=ap.getId()%>">
							<input type="hidden" name="did" value="${doctObj.id }">

							<div class="mb-3">
								<label class="form-label">Comment</label>
								<textarea required name="comm" class="form-control" rows="3"
									cols=""></textarea>
							</div>

							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
