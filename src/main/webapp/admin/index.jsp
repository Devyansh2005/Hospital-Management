<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.dao.UserDao"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard - HOSPITAL</title>
<%@include file="../component/all_css_js.jsp"%>
<style type="text/css">
.admin-stats-container {
    padding: 60px 0;
}

.stats-card {
    background: #fff;
    border-radius: 20px;
    padding: 30px;
    border: none;
    box-shadow: var(--shadow-premium);
    transition: all 0.3s ease;
    text-align: center;
}

.stats-card:hover {
    transform: translateY(-5px);
}

.card-icon {
    width: 60px;
    height: 60px;
    border-radius: 15px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 0 auto 20px;
    font-size: 24px;
}

.icon-blue { background: #e0f2fe; color: #0ea5e9; }
.icon-green { background: #dcfce7; color: #16a34a; }
.icon-purple { background: #f3e8ff; color: #9333ea; }
.icon-pink { background: #fce7f3; color: #db2777; }

.table-glass {
    background: rgba(255, 255, 255, 0.7);
    backdrop-filter: blur(8px);
    border-radius: 20px;
    overflow: hidden;
    box-shadow: var(--shadow-premium);
}

.table thead {
    background: #f8fafc;
}

.table th {
    font-family: 'Outfit', sans-serif;
    text-transform: uppercase;
    font-size: 0.85rem;
    letter-spacing: 1px;
    color: #64748b;
    border: none;
    padding: 20px;
}

.table td {
    padding: 20px;
    vertical-align: middle;
    border-color: #f1f5f9;
}

.badge-status {
    padding: 6px 12px;
    border-radius: 8px;
    font-weight: 600;
    font-size: 0.8rem;
}

.add-btn-container {
    background: linear-gradient(135deg, #0ea5e9 0%, #0369a1 100%);
    border-radius: 20px;
    padding: 40px;
    color: #fff;
    cursor: pointer;
    transition: all 0.3s ease;
}

.add-btn-container:hover {
    transform: scale(1.02);
    box-shadow: 0 20px 25px -5px rgba(14, 165, 233, 0.3);
}

</style>
</head>
<body class="bg-light">
	<c:if test="${empty adminObj }">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>

	<%@include file="../component/navbar_admin.jsp"%>

	<div class="container admin-stats-container">
		<div class="d-flex justify-content-between align-items-center mb-5">
            <h2 class="display-6 fw-bold" data-aos="fade-right">System Overview</h2>
            <div data-aos="fade-left">
                <span class="text-muted fw-semibold">Logged in as: <span class="text-primary">Administrator</span></span>
            </div>
        </div>

		<%
		DoctorDao dao = new DoctorDao(DBConnect.getConn());
		AppointmentDao dao2 = new AppointmentDao(DBConnect.getConn());
		SpecialistDao dao3 = new SpecialistDao(DBConnect.getConn());
        UserDao dao4 = new UserDao(DBConnect.getConn());
		%>

		<div class="row g-4 mb-5">
			<div class="col-md-3" data-aos="zoom-in" data-aos-delay="100">
				<div class="stats-card">
					<div class="card-icon icon-blue">
                        <i class="fas fa-user-md"></i>
                    </div>
					<div class="display-6 fw-bold mb-1"><%=dao.countDoctor()%></div>
					<div class="text-uppercase text-muted small fw-bold tracking-wider">Total Doctors</div>
				</div>
			</div>

			<div class="col-md-3" data-aos="zoom-in" data-aos-delay="200">
				<div class="stats-card">
					<div class="card-icon icon-green">
                        <i class="fas fa-users"></i>
                    </div>
					<div class="display-6 fw-bold mb-1"><%=dao4.countUser()%></div>
					<div class="text-uppercase text-muted small fw-bold tracking-wider">Total Patients</div>
				</div>
			</div>

			<div class="col-md-3" data-aos="zoom-in" data-aos-delay="300">
				<div class="stats-card">
					<div class="card-icon icon-purple">
                        <i class="fas fa-calendar-check"></i>
                    </div>
					<div class="display-6 fw-bold mb-1"><%=dao2.countAppointment()%></div>
					<div class="text-uppercase text-muted small fw-bold tracking-wider">Appointments</div>
				</div>
			</div>

			<div class="col-md-3" data-aos="zoom-in" data-aos-delay="400">
				<div class="stats-card">
					<div class="card-icon icon-pink">
                        <i class="fas fa-microscope"></i>
                    </div>
					<div class="display-6 fw-bold mb-1"><%=dao3.countSpecialist()%></div>
					<div class="text-uppercase text-muted small fw-bold tracking-wider">Specialists</div>
				</div>
			</div>
		</div>

        <div class="row g-4">
            <!-- Recent Appointments Table -->
            <div class="col-lg-8" data-aos="fade-up">
                <div class="table-glass p-4">
                    <div class="d-flex justify-content-between align-items-center mb-4">
                        <h4 class="fw-bold mb-0">Recent Activity</h4>
                        <a href="view_appointment.jsp" class="btn btn-link text-decoration-none fw-bold">View All</a>
                    </div>
                    <div class="table-responsive">
                        <table class="table align-middle">
                            <thead>
                                <tr>
                                    <th>Patient</th>
                                    <th>Doctor</th>
                                    <th>Date</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                List<Appointment> appList = dao2.getAllAppointment();
                                for (int i = 0; i < Math.min(appList.size(), 5); i++) {
                                    Appointment ap = appList.get(i);
                                    Doctor d = dao.getDoctorById(ap.getDoctorId());
                                %>
                                <tr>
                                    <td><span class="fw-bold"><%= ap.getFullName() %></span></td>
                                    <td>Dr. <%= (d != null) ? d.getFullName() : "Unknown" %></td>
                                    <td><%= ap.getAppointDate() %></td>
                                    <td>
                                        <% if ("Pending".equals(ap.getStatus())) { %>
                                            <span class="badge-status bg-warning bg-opacity-10 text-warning">Pending</span>
                                        <% } else { %>
                                            <span class="badge-status bg-success bg-opacity-10 text-success">Completed</span>
                                        <% } %>
                                    </td>
                                </tr>
                                <% } %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <!-- Quick Actions -->
            <div class="col-lg-4" data-aos="fade-up" data-aos-delay="200">
                <div class="add-btn-container mb-4" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    <div class="d-flex align-items-center">
                        <div class="me-4 text-white">
                            <i class="fas fa-plus-circle fa-3x"></i>
                        </div>
                        <div>
                            <h4 class="fw-bold mb-1">Add Specialist</h4>
                            <p class="mb-0 opacity-75">Register a new medical department</p>
                        </div>
                    </div>
                </div>
                
                <a href="doctor.jsp" class="text-decoration-none">
                    <div class="stats-card p-4 text-start border d-flex align-items-center justify-content-between">
                        <div>
                            <h5 class="fw-bold mb-1 text-dark">Manage Doctors</h5>
                            <p class="mb-0 text-muted small">Edit profiles & schedules</p>
                        </div>
                        <i class="fas fa-chevron-right text-primary"></i>
                    </div>
                </a>
            </div>
        </div>

	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content border-0 shadow-lg" style="border-radius: 20px;">
				<div class="modal-header border-0 p-4 pb-0">
					<h5 class="modal-title fw-bold" id="exampleModalLabel">New Specialist</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body p-4">
					<form action="../addSpecialist" method="post">
						<div class="mb-4">
							<label class="form-label text-muted small fw-bold">Specialist Name</label>
							<input type="text" name="specName" class="form-control form-control-lg border-0 bg-light" placeholder="e.g. Cardiology" required>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-lg w-100">Add Department</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
