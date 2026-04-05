<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DIABLO HOSPITALS - Premium Healthcare</title>
<%@include file="component/all_css_js.jsp"%>
<style>
/* Additional Inline Styles for the Bento Grid */
.bento-grid {
    display: grid;
    grid-template-columns: repeat(12, 1fr);
    grid-auto-rows: minmax(150px, auto);
    gap: 24px;
    padding: 60px 0;
}

.bento-item {
    border-radius: 32px;
    padding: 40px;
    background: #fff;
    box-shadow: var(--shadow-premium);
    overflow: hidden;
    position: relative;
    transition: all 0.5s cubic-bezier(0.23, 1, 0.32, 1);
}

.bento-item:hover {
    transform: translateY(-10px) scale(1.01);
    box-shadow: 0 30px 40px -10px rgba(0,0,0,0.1);
}

.bento-blue { background: #f0f9ff; }
.bento-teal { background: #f0fdfa; }

.bento-1 { grid-column: span 8; grid-row: span 3; display: flex; align-items: center; }
.bento-2 { grid-column: span 4; grid-row: span 3; background-image: url('img/tech_medical.png'); background-size: cover; background-position: center; }
.bento-3 { grid-column: span 4; grid-row: span 3; background-image: url('img/consultation.png'); background-size: cover; background-position: center; }
.bento-4 { grid-column: span 8; grid-row: span 3; display: flex; flex-direction: column; justify-content: center; }

@media (max-width: 991px) {
    .bento-grid { grid-template-columns: repeat(1, 1fr); }
    .bento-item { grid-column: span 1 !important; grid-row: span 1 !important; }
}

.hero-section {
    min-height: 90vh;
    display: flex;
    align-items: center;
    background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%);
    position: relative;
    padding: 100px 0;
}

.hero-img {
    filter: drop-shadow(0 20px 50px rgba(0,0,0,0.15));
    animation: float 6s ease-in-out infinite;
    border-radius: 40px;
}

@keyframes float {
    0% { transform: translateY(0px); }
    50% { transform: translateY(-20px); }
    100% { transform: translateY(0px); }
}

.stat-card {
    background: rgba(255, 255, 255, 0.7);
    backdrop-filter: blur(8px);
    border: 1px solid rgba(255, 255, 255, 0.3);
    border-radius: 24px;
    padding: 40px;
    text-align: center;
}

</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<!-- Hero Section -->
	<section class="hero-section">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6" data-aos="fade-right">
					<span class="badge rounded-pill bg-info bg-opacity-10 text-info px-4 py-2 mb-4 fs-6 fw-bold">WORLD CLASS HEALTHCARE</span>
					<h1 class="display-3 fw-bold mb-4" style="line-height: 1.1;">WELCOME TO DIABLO HOSPITALS</h1>
					<p class="fs-5 text-slate-500 mb-5 pe-md-5" style="color: #64748b;">Experience premium medical care integrated with high-end technology and personalized patient services. We are dedicated to your well-being.</p>
					<div class="d-flex gap-3">
						<a href="user_appointment.jsp" class="btn btn-primary btn-lg px-5">Book Appointment</a>
						<a href="#services" class="btn btn-outline-dark btn-lg px-5">Learn More</a>
					</div>
				</div>
				<div class="col-md-6 mt-5 mt-md-0" data-aos="fade-left">
					<img src="img/surgery_hero.png" alt="Hospital Hero" class="img-fluid hero-img w-100">
				</div>
			</div>
		</div>
	</section>

	<!-- Statistics Section -->
	<section class="py-5">
		<div class="container">
			<div class="row g-4">
				<div class="col-md-4" data-aos="zoom-in" data-aos-delay="100">
					<div class="stat-card">
						<div class="display-4 fw-bold text-primary mb-2">50+</div>
						<div class="text-uppercase tracking-wider fw-bold text-slate-500">Expert Doctors</div>
					</div>
				</div>
				<div class="col-md-4" data-aos="zoom-in" data-aos-delay="200">
					<div class="stat-card">
						<div class="display-4 fw-bold text-primary mb-2">10k+</div>
						<div class="text-uppercase tracking-wider fw-bold text-slate-500">Satisfied Patients</div>
					</div>
				</div>
				<div class="col-md-4" data-aos="zoom-in" data-aos-delay="300">
					<div class="stat-card">
						<div class="display-4 fw-bold text-primary mb-2">15+</div>
						<div class="text-uppercase tracking-wider fw-bold text-slate-500">Specialized Depts</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Bento Grid Services Section -->
	<section id="services" class="container">
		<div class="text-center mb-5" data-aos="fade-up">
			<h2 class="display-4 fw-bold mb-3">Our Core Services</h2>
			<p class="text-slate-500 fs-5 mb-0">Providing Excellence in Every Section of Healthcare</p>
		</div>
		
		<div class="bento-grid">
			<div class="bento-item bento-1 bento-blue" data-aos="fade-up">
				<div>
					<h3 class="display-6 fw-bold mb-4">Surgical Excellence</h3>
					<p class="fs-5 text-slate-600 mb-5 pe-md-5" style="color: #475569;">Our surgical suites are equipped with the latest robotic and precision technology to ensure minimal downtime and maximum care.</p>
					<a href="#" class="btn btn-primary px-4 fw-bold">Explore Facilities <i class="fas fa-arrow-right ms-2"></i></a>
				</div>
			</div>
			
			<div class="bento-item bento-2 shadow-inner" data-aos="fade-up" data-aos-delay="100">
				<!-- Background Image from tech_medical.png -->
			</div>
			
			<div class="bento-item bento-3 shadow-inner" data-aos="fade-up" data-aos-delay="200">
				<!-- Background Image from consultation.png -->
			</div>
			
			<div class="bento-item bento-4 bento-teal" data-aos="fade-up" data-aos-delay="300">
				<h3 class="display-6 fw-bold mb-4">Diagnostic Suite</h3>
				<p class="fs-5 text-slate-600 mb-0" style="color: #475569;">Advanced imaging and diagnostic capabilities to provide accurate results in the shortest time possible.</p>
			</div>
		</div>
	</section>

	<!-- Doctor Team Section -->
	<section class="py-5 pb-5 mb-5">
		<div class="container pb-5">
			<div class="text-center mb-5" data-aos="fade-up">
				<h2 class="display-4 fw-bold mb-3">Meet Our Specialists</h2>
				<p class="text-slate-500 fs-5">Certified Professionals at Your Service</p>
			</div>
			<div class="row g-4">
				<%
				try {
					DoctorDao dao = new DoctorDao(DBConnect.getConn());
					List<Doctor> list = dao.getAllDoctor();
					if (list != null && !list.isEmpty()) {
						for (int i = 0; i < Math.min(list.size(), 4); i++) {
							Doctor d = list.get(i);
				%>
				<div class="col-md-3" data-aos="fade-up" data-aos-delay="<%= i * 100 %>">
					<div class="paint-card text-center p-4 h-100">
						<div class="mb-4">
                            <i class="fas fa-user-md fa-4x text-primary bg-light p-4 rounded-circle"></i>
                        </div>
						<h5 class="fw-bold mb-2"><%= d.getFullName() %></h5>
						<p class="text-primary fw-semibold mb-3"><%= d.getSpecialist() %></p>
						<small class="text-slate-400 d-block mb-3" style="color: #94a3b8;"><%= d.getQualification() %></small>
						<button class="btn btn-outline-primary btn-sm w-100 fw-bold">View Profile</button>
					</div>
				</div>
				<% 
						}
					} else {
				%>
					<div class="col-12 text-center">
						<p class="text-muted">No specialists available at the moment.</p>
					</div>
				<%
					}
				} catch (Exception e) {
				%>
					<div class="col-12 text-center">
						<p class="text-muted">Currently unable to load specialist data.</p>
					</div>
				<%
				}
				%>
			</div>
		</div>
	</section>

	<%@include file="component/footer.jsp"%>

</body>
</html>
