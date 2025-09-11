<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="bluesky.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- HOME/CARROUSEL -->
    <section id="home">
        <div class="row">
            <div class="owl-carousel owl-theme home-slider">
                <div class="item item-first">
                    <div class="caption">
                        <div class="container">
                            <div class="col-md-6 col-sm-12">
                                <h1>Capacítate desde cualquier lugar</h1>
                                <h3>Accede a cursos en línea creados especialmente para conocer los procesos y políticas de BlueSky Financial.</h3>
                                <a href="#feature" class="section-btn btn btn-default smoothScroll">Ver beneficios</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item item-second">
                    <div class="caption">
                        <div class="container">
                            <div class="col-md-6 col-sm-12">
                                <h1>Avanza a tu ritmo</h1>
                                <h3>Realiza las capacitaciones obligatorias según tu rol, rinde evaluaciones y obtén tu certificado.</h3>
                                <a href="#feature" class="section-btn btn btn-default smoothScroll">Explorar Cursos</a>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="item item-third">
                    <div class="caption">
                        <div class="container">
                            <div class="col-md-6 col-sm-12">
                                <h1>Formación simple y efectiva</h1>
                                <h3>Diseñamos esta plataforma para facilitar tu integración y crecimiento dentro de BlueSky.</h3>
                                <a href="#contact" class="section-btn btn btn-default smoothScroll">Contáctanos</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- FEATURE PRO / TU RUTA DE CAPACITACION-->
    <section id="feature" class="feature-pro-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 text-center mb-5" data-aos="fade-up">
                    <h2 class="feature-title">Tu ruta de capacitación</h2>
                </div>
                <br />
                <!-- CARD1 -->
                <div class="col-md-4 col-sm-6 mb-4" data-aos="fade-up" data-aos-delay="0">
                    <div class="feature-card" id="cardPaso1" data-tilt>
                        <div class="step-badge">01</div>
                        <i class='bx bxs-graduation icon'></i>
                        <h3>Capacitación obligatoria</h3>
                        <p class="fs-150 lh-17 c-333">Cursos asignados según tu rol para cumplir estándares internos y normativas.</p>
                        <div class="chip">Asignado por RR.HH.</div>
                        <div class="chip">Onboarding</div>
                    </div>
                </div>
                <!-- CARD2 -->
                <div class="col-md-4 col-sm-6 mb-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="feature-card" id="cardPaso2" data-tilt>
                        <div class="step-badge">02</div>
                        <i class='bx bxs-edit icon'></i>
                        <h3>Evaluación en línea</h3>
                        <p class="fs-150 lh-17 c-333">Rinde una prueba por curso para validar tu aprendizaje con feedback inmediato.</p>
                        <div class="chip">Tiempo estimado: 10–15 min</div>
                        <div class="chip">Intentos controlados</div>
                    </div>
                </div>

                <!-- CARD3 -->
                <div class="col-md-4 col-sm-6 mb-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="feature-card" id="cardPaso3" data-tilt>
                        <div class="step-badge">03</div>
                        <i class='bx bxs-badge-check icon'></i>
                        <h3>Certificación automática</h3>
                        <p class="fs-150 lh-17 c-333">Al aprobar, descarga tu certificado digital validado por BlueSky y compártelo.</p>
                        <div class="chip">PDF con folio</div>
                        <div class="chip">Validez interna</div>
                    </div>
                </div>
            </div>

            <!-- Línea de progreso (decorativa) -->
            <div class="progress-line d-none d-md-flex" aria-hidden="false">
                <span id="dotPaso1"
                    class="dot dot-1"
                    title="Capacitación"
                    tabindex="0"
                    data-target="cardPaso1"
                    aria-controls="cardPaso1"
                    aria-label="Ver: Capacitación obligatoria"></span>

                <span id="dotPaso2"
                    class="dot dot-2"
                    title="Evaluación"
                    tabindex="0"
                    data-target="cardPaso2"
                    aria-controls="cardPaso2"
                    aria-label="Ver: Evaluación en línea"></span>

                <span id="dotPaso3"
                    class="dot dot-3"
                    title="Certificación"
                    tabindex="0"
                    data-target="cardPaso3"
                    aria-controls="cardPaso3"
                    aria-label="Ver: Certificación automática"></span>
            </div>
        </div>
    </section>
    <!-- CARD TU RUTA DE CAPACITACION -->
    <div class="modal fade" id="modalPaso1" tabindex="-1" role="dialog" aria-labelledby="modalPaso1Label" aria-hidden="true" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="modalPaso1Label">01 · Capacitación obligatoria</h4>
                </div>
                <div class="modal-body">
                    <p>Cursos asignados según tu rol para cumplir estándares internos y normativas.</p>
                    <div class="chip">Asignado por RR.HH.</div>
                    <div class="chip">Onboarding</div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modalPaso2" tabindex="-1" role="dialog" aria-labelledby="modalPaso2Label" aria-hidden="true" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="modalPaso2Label">02 · Evaluación en línea</h4>
                </div>
                <div class="modal-body">
                    <p>Rinde una prueba por curso para validar tu aprendizaje con feedback inmediato.</p>
                    <div class="chip">Tiempo estimado: 10–15 min</div>
                    <div class="chip">Intentos controlados</div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modalPaso3" tabindex="-1" role="dialog" aria-labelledby="modalPaso3Label" aria-hidden="true" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="modalPaso3Label">03 · Certificación automática</h4>
                </div>
                <div class="modal-body">
                    <p>Al aprobar, descarga tu certificado digital validado por BlueSky y compártelo.</p>
                    <div class="chip">PDF con folio</div>
                    <div class="chip">Validez interna</div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- ABOUT -->
    <section id="about" class="about-pro">
        <div class="container">

            <!-- Título arriba y centrado -->
            <div class="row">
                <div class="col-12 text-center" data-aos="fade-up">
                    <h2 class="feature-title1">Impulsa tu desarrollo con nuestra plataforma de capacitación</h2>
                </div>
            </div>

            <!-- Layout 2 columnas: cards (izq) + visual interactivo (der) -->
            <div class="row about-row">

                <!-- IZQUIERDA: Información / Cards -->
                <div class="col-md-6 col-sm-12 about-info-col">
                    <div class="about-info-pro" data-aos="fade-right">
                        <div class="about-list">

                            <!-- Item 1 -->
                            <div class="about-item"
                                data-aos="fade-up"
                                data-aos-delay="50"
                                role="button" tabindex="0"
                                aria-label="Capacitación para nuevos ingresos"
                                title="Capacitación para nuevos ingresos"
                                onmouseenter="this.classList.add('card-wiggle-once');"
                                onanimationend="this.classList.remove('card-wiggle-once');"
                                onfocus="this.classList.add('card-wiggle-once');"
                                onblur="this.classList.remove('card-wiggle-once');">
                                <div class="about-item-inner"
                                    data-tilt data-tilt-max="8" data-tilt-speed="500"
                                    data-tilt-perspective="900" data-tilt-scale="1.03">
                                    <div class="about-icon" aria-hidden="true">
                                        <i class="fa fa-users"></i>
                                    </div>
                                    <div class="about-text">
                                        <h3>Capacitación para nuevos ingresos</h3>
                                        <p>Todos los nuevos integrantes completan cursos clave para conocer procesos y valores de BlueSky.</p>
                                    </div>
                                </div>
                            </div>

                            <!-- Item 2 -->
                            <div class="about-item"
                                data-aos="fade-up"
                                data-aos-delay="100"
                                role="button" tabindex="0"
                                aria-label="Evaluación y certificación"
                                title="Evaluación y certificación"
                                onmouseenter="this.classList.add('card-wiggle-once');"
                                onanimationend="this.classList.remove('card-wiggle-once');"
                                onfocus="this.classList.add('card-wiggle-once');"
                                onblur="this.classList.remove('card-wiggle-once');">
                                <div class="about-item-inner"
                                    data-tilt data-tilt-max="8" data-tilt-speed="500"
                                    data-tilt-perspective="900" data-tilt-scale="1.03">
                                    <div class="about-icon" aria-hidden="true">
                                        <i class="fa fa-certificate"></i>
                                    </div>
                                    <div class="about-text">
                                        <h3>Evaluación y certificación</h3>
                                        <p>Cada curso incluye evaluación. Al aprobar, obtienes un certificado descargable de forma automática.</p>
                                    </div>
                                </div>
                            </div>

                            <!-- Item 3 -->
                            <div class="about-item"
                                data-aos="fade-up"
                                data-aos-delay="150"
                                role="button" tabindex="0"
                                aria-label="Seguimiento de progreso"
                                title="Seguimiento de progreso"
                                onmouseenter="this.classList.add('card-wiggle-once');"
                                onanimationend="this.classList.remove('card-wiggle-once');"
                                onfocus="this.classList.add('card-wiggle-once');"
                                onblur="this.classList.remove('card-wiggle-once');">
                                <div class="about-item-inner"
                                    data-tilt data-tilt-max="8" data-tilt-speed="500"
                                    data-tilt-perspective="900" data-tilt-scale="1.03">
                                    <div class="about-icon" aria-hidden="true">
                                        <i class="fa fa-bar-chart-o"></i>
                                    </div>
                                    <div class="about-text">
                                        <h3>Seguimiento de progreso</h3>
                                        <p>La plataforma registra tu avance para que RRHH valide cumplimiento y desempeño.</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- DERECHA: Visual interactivo al lado de las cards (sin modal/zoom) -->
                <div class="col-md-6 col-sm-12 about-visual-col">
                    <figure class="about-visual pro-visual" data-aos="fade-left">
                        <div class="pro-frame is-interactive"
                            data-tilt data-tilt-max="8" data-tilt-speed="600" data-tilt-perspective="900">

                            <!-- Borde degradado animado -->
                            <span class="pro-gradient-border" aria-hidden="true"></span>

                            <!-- Imagen principal -->
                            <img
                                src="<%: ResolveUrl("~/images/portal-bluesky.png") %>"
                                alt="Portal de Capacitaciones - BlueSky"
                                class="pro-img"
                                loading="lazy"
                                width="1600"
                                height="1067" />

                            <!-- Overlay sin botón -->
                            <figcaption class="pro-overlay">
                                <div class="pro-caption">
                                    <!-- Puedes agregar un badge si quieres -->
                                    <!-- <span class="pro-badge">Vista del Portal</span> -->
                                </div>
                            </figcaption>

                            <!-- Efectos visuales -->
                            <span class="pro-sheen" aria-hidden="true"></span>
                            <span class="pro-shadow" aria-hidden="true"></span>
                        </div>
                    </figure>
                </div>

            </div>
        </div>
    </section>



    <!-- TEAM -->
    <section id="team" class="team-section py-80">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="section-title text-center mb-40" data-aos="fade-up">
                        <h2 class="h2 fw-700 mb-8">Quiénes forman parte de BlueSky
  <small>Conoce a nuestro equipo de <strong>BlueSky Financial</strong></small>
                        </h2>

                    </div>
                </div>

                <!-- Alejandra -->
                <div class="col-sm-6 col-md-6 col-lg-3 mb-24" data-aos="fade-up" data-aos-delay="0">
                    <article class="team-card" role="region" aria-labelledby="member-alejandra-name">
                        <div class="team-media">
                            <img
                                src="<%: ResolveUrl("~/images/author-image1.jpg") %>"
                                class="img-fluid"
                                alt="Foto de Alejandra Muñoz"
                                loading="lazy"
                                width="480" height="560" />
                            <div class="media-overlay"></div>
                            <button type="button"
                                class="btn btn-light btn-view"
                                data-toggle="modal"
                                data-target="#modalAlejandra"
                                aria-label="Ver más sobre Alejandra Muñoz">
                                Conoce más
                            </button>
                        </div>
                        <div class="team-body text-center">
                            <h3 id="member-alejandra-name" class="member-name">Alejandra Muñoz</h3>
                            <span class="badge-role">Desarrollador Full Stack</span>
                        </div>
                    </article>
                </div>

                <!-- Rodrigo -->
                <div class="col-sm-6 col-md-6 col-lg-3 mb-24" data-aos="fade-up" data-aos-delay="80">
                    <article class="team-card" role="region" aria-labelledby="member-rodrigo-name">
                        <div class="team-media">
                            <img
                                src="<%: ResolveUrl("~/images/author-image2.jpg") %>"
                                class="img-fluid"
                                alt="Foto de Rodrigo Vargas"
                                loading="lazy"
                                width="480" height="560" />
                            <div class="media-overlay"></div>
                            <button type="button"
                                class="btn btn-light btn-view"
                                data-toggle="modal"
                                data-target="#modalRodrigo"
                                aria-label="Ver más sobre Rodrigo Vargas">
                                Conoce más
                            </button>
                        </div>
                        <div class="team-body text-center">
                            <h3 id="member-rodrigo-name" class="member-name">Rodrigo Vargas</h3>
                            <span class="badge-role">Product Owner</span>
                        </div>
                    </article>
                </div>

                <!-- Camila -->
                <div class="col-sm-6 col-md-6 col-lg-3 mb-24" data-aos="fade-up" data-aos-delay="160">
                    <article class="team-card" role="region" aria-labelledby="member-camila-name">
                        <div class="team-media">
                            <img
                                src="<%: ResolveUrl("~/images/author-image3.jpg") %>"
                                class="img-fluid"
                                alt="Foto de Camila Rojas"
                                loading="lazy"
                                width="480" height="560" />
                            <div class="media-overlay"></div>
                            <button type="button"
                                class="btn btn-light btn-view"
                                data-toggle="modal"
                                data-target="#modalCamila"
                                aria-label="Ver más sobre Camila Rojas">
                                Conoce más
                            </button>
                        </div>
                        <div class="team-body text-center">
                            <h3 id="member-camila-name" class="member-name">Camila Rojas</h3>
                            <span class="badge-role">Analista QA</span>
                        </div>
                    </article>
                </div>

                <!-- Felipe -->
                <div class="col-sm-6 col-md-6 col-lg-3 mb-24" data-aos="fade-up" data-aos-delay="240">
                    <article class="team-card" role="region" aria-labelledby="member-felipe-name">
                        <div class="team-media">
                            <img
                                src="<%: ResolveUrl("~/images/author-image4.jpg") %>"
                                class="img-fluid"
                                alt="Foto de Felipe Navarro"
                                loading="lazy"
                                width="480" height="560" />
                            <div class="media-overlay"></div>
                            <button type="button"
                                class="btn btn-light btn-view"
                                data-toggle="modal"
                                data-target="#modalFelipe"
                                aria-label="Ver más sobre Felipe Navarro">
                                Conoce más
                            </button>
                        </div>
                        <div class="team-body text-center">
                            <h3 id="member-felipe-name" class="member-name">Felipe Navarro</h3>
                            <span class="badge-role">Soporte Técnico y Plataforma</span>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </section>

    <!-- MODAL / EXPERIENCIAS -->

    <!-- Modal Alejandra -->
    <div class="modal fade modal-pro" id="modalAlejandra" tabindex="-1" role="dialog"
        aria-labelledby="modalAlejandraLabel" aria-modal="true" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="avatar-wrap">
                        <img src="<%: ResolveUrl("~/images/author-image1.jpg") %>" alt="Alejandra Muñoz" class="avatar img-responsive" />
                        <h4 class="title" id="modalAlejandraLabel">Alejandra Muñoz</h4>
                        <span class="role-badge">Desarrollador Full Stack</span>
                    </div>
                </div>

                <div class="modal-body">
                    <p><strong>Resumen:</strong> 6+ años construyendo aplicaciones web con ASP.NET (Web Forms y MVC), Web API y SQL Server.</p>
                    <p><strong>Experiencia relevante:</strong></p>
                    <ul class="list-check">
                        <li>Migración de Web Forms a ASP.NET Core con autenticación Identity y JWT.</li>
                        <li>Integración de pagos (Transbank/API REST) y generación de certificados PDF con iText7.</li>
                        <li>Front-end con Bootstrap, jQuery y componentes reutilizables.</li>
                    </ul>
                    <p><strong>Stack:</strong></p>
                    <div class="chip-group">
                        <span class="chip">C#</span><span class="chip">ASP.NET</span><span class="chip">EF</span>
                        <span class="chip">SQL Server</span><span class="chip">Azure DevOps</span>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" aria-label="Cerrar">Cerrar</button>
                </div>

            </div>
        </div>
    </div>

    <!-- Modal Rodrigo -->
    <div class="modal fade modal-pro" id="modalRodrigo" tabindex="-1" role="dialog"
        aria-labelledby="modalRodrigoLabel" aria-modal="true" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="avatar-wrap">
                        <img src="<%: ResolveUrl("~/images/author-image2.jpg") %>" alt="Rodrigo Vargas" class="avatar img-responsive" />
                        <h4 class="title" id="modalRodrigoLabel">Rodrigo Vargas</h4>
                        <span class="role-badge">Product Owner</span>
                    </div>
                </div>

                <div class="modal-body">
                    <p><strong>Resumen:</strong> Product Owner con 7+ años en proyectos EdTech y de cumplimiento normativo.</p>
                    <p><strong>Experiencia relevante:</strong></p>
                    <ul class="list-check">
                        <li>Definición de roadmap, OKR y priorización de features.</li>
                        <li>Gestión de backlog y discovery con usuarios.</li>
                        <li>Coordinación con equipos de desarrollo y QA bajo Scrum/Kanban.</li>
                    </ul>
                    <p><strong>Herramientas:</strong></p>
                    <div class="chip-group">
                        <span class="chip">Jira</span><span class="chip">Confluence</span><span class="chip">GA4</span>
                        <span class="chip">Amplitude</span><span class="chip">Figma</span>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                </div>

            </div>
        </div>
    </div>

    <!-- Modal Camila -->
    <div class="modal fade modal-pro" id="modalCamila" tabindex="-1" role="dialog"
        aria-labelledby="modalCamilaLabel" aria-modal="true" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="avatar-wrap">
                        <img src="<%: ResolveUrl("~/images/author-image3.jpg") %>" alt="Camila Rojas" class="avatar img-responsive" />
                        <h4 class="title" id="modalCamilaLabel">Camila Rojas</h4>
                        <span class="role-badge">Analista QA</span>
                    </div>
                </div>

                <div class="modal-body">
                    <p><strong>Resumen:</strong> QA orientada a la calidad funcional y automatización de pruebas.</p>
                    <p><strong>Experiencia relevante:</strong></p>
                    <ul class="list-check">
                        <li>Diseño de planes de prueba, casos y matrices de trazabilidad.</li>
                        <li>Automatización UI/API con Selenium + NUnit y Postman.</li>
                        <li>Pruebas de rendimiento con JMeter.</li>
                    </ul>
                    <p><strong>Stack:</strong></p>
                    <div class="chip-group">
                        <span class="chip">Selenium</span><span class="chip">NUnit</span><span class="chip">Postman</span>
                        <span class="chip">JMeter</span><span class="chip">Azure DevOps</span>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                </div>

            </div>
        </div>
    </div>

    <!-- Modal Felipe -->
    <div class="modal fade modal-pro" id="modalFelipe" tabindex="-1" role="dialog"
        aria-labelledby="modalFelipeLabel" aria-modal="true" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="avatar-wrap">
                        <img src="<%: ResolveUrl("~/images/author-image4.jpg") %>" alt="Felipe Navarro" class="avatar img-responsive" />
                        <h4 class="title" id="modalFelipeLabel">Felipe Navarro</h4>
                        <span class="role-badge">Soporte Técnico y Plataforma</span>
                    </div>
                </div>

                <div class="modal-body">
                    <p><strong>Resumen:</strong> 5+ años en soporte nivel 2/3, monitoreo y continuidad operativa.</p>
                    <p><strong>Experiencia relevante:</strong></p>
                    <ul class="list-check">
                        <li>Administración IIS, despliegues CI/CD y troubleshooting.</li>
                        <li>Monitoreo con Zabbix/CloudWatch y gestión de incidentes.</li>
                        <li>Backups, restauración y hardening básico en Windows Server.</li>
                    </ul>
                    <p><strong>Stack:</strong></p>
                    <div class="chip-group">
                        <span class="chip">IIS</span><span class="chip">Windows Server</span><span class="chip">Git</span>
                        <span class="chip">Octopus</span><span class="chip">Zabbix</span>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                </div>

            </div>
        </div>
    </div>



    <!-- CURSOS -->
    <section id="courses">
        <div class="container">
            <div class="row">

                <div class="col-md-12 col-sm-12">
                    <div class="section-title">
                        <h2>Cursos disponibles
                        <small>Comienza tu formación en <strong>BlueSky Financial</strong></small>
                        </h2>

                        <!-- Botón centrado -->
                        <div class="text-center" style="margin-top: 12px;">
                            <asp:Button ID="btnExplorarCursos"
                                runat="server"
                                Text="Explorar más cursos"
                                CssClass="section-btn section-btn--alt btn btn-default"
                                UseSubmitBehavior="false"
                                OnClick="btnExplorarCursos_Click" />

                        </div>

                    </div>

                    <div class="owl-carousel owl-theme owl-courses">

                        <div class="item">
                            <div class="courses-thumb">
                                <div class="courses-top">
                                    <div class="courses-image">
                                        <img src="images/courses-image1.jpg" class="img-responsive" alt="">
                                    </div>
                                    <div class="courses-date">
                                        <span><i class="fa fa-calendar"></i>08 / 08 / 2025</span>
                                        <span><i class="fa fa-clock-o"></i>6 Horas</span>
                                    </div>
                                </div>

                                <div class="courses-detail">
                                    <h3><a href="#">Inducción Institucional</a></h3>
                                    <p>Conoce la historia, misión, visión y estructura de BlueSky para integrarte eficazmente.</p>
                                </div>

                                <div class="courses-info">
                                    <div class="courses-author">
                                        <img src="images/author-image1.jpg" class="img-responsive" alt="">
                                        <span>Equipo BlueSky</span>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="item">
                            <div class="courses-thumb">
                                <div class="courses-top">
                                    <div class="courses-image">
                                        <img src="images/courses-image2.jpg" class="img-responsive" alt="">
                                    </div>
                                    <div class="courses-date">
                                        <span><i class="fa fa-calendar"></i>09 / 08 / 2025</span>
                                        <span><i class="fa fa-clock-o"></i>4 Horas</span>
                                    </div>
                                </div>

                                <div class="courses-detail">
                                    <h3><a href="#">Políticas Internas y Normativas</a></h3>
                                    <p>Aprende las reglas, responsabilidades y procedimientos vigentes dentro de la empresa.</p>
                                </div>

                                <div class="courses-info">
                                    <div class="courses-author">
                                        <img src="images/courses-image2.jpg" class="img-responsive" alt="">
                                        <span>RRHH BlueSky</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="item">
                            <div class="courses-thumb">
                                <div class="courses-top">
                                    <div class="courses-image">
                                        <img src="images/courses-image3.jpg" class="img-responsive" alt="">
                                    </div>
                                    <div class="courses-date">
                                        <span><i class="fa fa-calendar"></i>10 / 08 / 2025</span>
                                        <span><i class="fa fa-clock-o"></i>5 Horas</span>
                                    </div>
                                </div>

                                <div class="courses-detail">
                                    <h3><a href="#">Prevención de Riesgos</a></h3>
                                    <p>Capacítate en seguridad, prevención de accidentes y procedimientos de emergencia.</p>
                                </div>

                                <div class="courses-info">
                                    <div class="courses-author">
                                        <img src="images/courses-image3.jpg" class="img-responsive" alt="">
                                        <span>Comité Paritario</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="item">
                            <div class="courses-thumb">
                                <div class="courses-top">
                                    <div class="courses-image">
                                        <img src="images/courses-image4.jpg" class="img-responsive" alt="">
                                    </div>
                                    <div class="courses-date">
                                        <span><i class="fa fa-calendar"></i>12 / 08 / 2025</span>
                                        <span><i class="fa fa-clock-o"></i>3 Horas</span>
                                    </div>
                                </div>

                                <div class="courses-detail">
                                    <h3><a href="#">Uso de Herramientas Digitales</a></h3>
                                    <p>Aprende a utilizar las plataformas internas y herramientas digitales de la empresa.</p>
                                </div>

                                <div class="courses-info">
                                    <div class="courses-author">
                                        <img src="images/courses-image1.jpg" class="img-responsive" alt="">
                                        <span>Equipo TI</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="item">
                            <div class="courses-thumb">
                                <div class="courses-top">
                                    <div class="courses-image">
                                        <img src="images/courses-image5.jpg" class="img-responsive" alt="">
                                    </div>
                                    <div class="courses-date">
                                        <span><i class="fa fa-calendar"></i>14 / 08 / 2025</span>
                                        <span><i class="fa fa-clock-o"></i>5 Horas</span>
                                    </div>
                                </div>

                                <div class="courses-detail">
                                    <h3><a href="#">Atención a Clientes y Ética</a></h3>
                                    <p>Desarrolla habilidades comunicativas y éticas en la atención al cliente y al equipo interno.</p>
                                </div>

                                <div class="courses-info">
                                    <div class="courses-author">
                                        <img src="images/courses-image2.jpg" class="img-responsive" alt="">
                                        <span>Formación Corporativa</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- owl-carousel -->

                </div>
            </div>
        </div>
    </section>




    <!-- TESTIMONIAL -->
    <section id="testimonial">
        <div class="container">
            <div class="row">

                <div class="col-md-12 col-sm-12">
                    <div class="section-title">
                        <h2>Reseñas de los estudiantes
            <small>Opiniones de nuestros colaboradores capacitados</small>
                        </h2>
                    </div>

                    <div class="owl-carousel owl-theme owl-client">
                        <!-- Card 1 -->
                        <div class="col-md-4 col-sm-4">
                            <article class="tst-card" data-tilt data-tilt-max="8" data-tilt-speed="450" data-tilt-perspective="900" role="article" aria-label="Reseña de Jackson, Shopify Developer">
                                <div class="tst-media">
                                    <img src="images/author-image1.jpg" class="img-responsive" alt="Jackson">
                                    <span class="tst-media-overlay" aria-hidden="true"></span>
                                </div>
                                <header class="tst-header">
                                    <h4 class="tst-name">Jackson</h4>
                                </header>
                                <p class="tst-text">
                                    El portal de capacitación me permitió conocer rápidamente los procesos internos de BlueSky.
                                </p>
                                <div class="tst-rating" aria-label="5 de 5">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                </div>
                                <span class="tst-glow" aria-hidden="true"></span>
                            </article>
                        </div>

                        <!-- Card 2 -->
                        <div class="col-md-4 col-sm-4">
                            <article class="tst-card" data-tilt data-tilt-max="8" data-tilt-speed="450" data-tilt-perspective="900" role="article" aria-label="Reseña de Camila, Analista de Riesgos">
                                <div class="tst-media">
                                    <img src="images/author-image2.jpg" class="img-responsive" alt="Camila">
                                    <span class="tst-media-overlay" aria-hidden="true"></span>
                                </div>
                                <header class="tst-header">
                                    <h4 class="tst-name">Camila</h4>
                                </header>
                                <p class="tst-text">
                                    Gracias al sistema pude certificarme antes de comenzar mis funciones. Todo es claro, accesible y bien explicado.
                                </p>
                                <div class="tst-rating" aria-label="3 de 5">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>

                                </div>
                                <span class="tst-glow" aria-hidden="true"></span>
                            </article>
                        </div>

                        <!-- Card 3 -->
                        <div class="col-md-4 col-sm-4">
                            <article class="tst-card" data-tilt data-tilt-max="8" data-tilt-speed="450" data-tilt-perspective="900" role="article" aria-label="Reseña de Barbie, Ejecutivo Comercial">
                                <div class="tst-media">
                                    <img src="images/author-image3.jpg" class="img-responsive" alt="Barbie">
                                    <span class="tst-media-overlay" aria-hidden="true"></span>
                                </div>
                                <header class="tst-header">
                                    <h4 class="tst-name">Barbie</h4>
                                </header>
                                <p class="tst-text">
                                    La plataforma me ayudó a entender las políticas internas y me dio confianza para integrarme al equipo.
                                </p>
                                <div class="tst-rating" aria-label="4 de 5">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>

                                </div>
                                <span class="tst-glow" aria-hidden="true"></span>
                            </article>
                        </div>

                        <!-- Card 4 -->
                        <div class="col-md-4 col-sm-4">
                            <article class="tst-card" data-tilt data-tilt-max="8" data-tilt-speed="450" data-tilt-perspective="900" role="article" aria-label="Reseña de Andrés, Asistente Administrativo">
                                <div class="tst-media">
                                    <img src="images/author-image4.jpg" class="img-responsive" alt="Andrés">
                                    <span class="tst-media-overlay" aria-hidden="true"></span>
                                </div>
                                <header class="tst-header">
                                    <h4 class="tst-name">Andrés</h4>
                                </header>
                                <p class="tst-text">
                                    El portal me ayudó a comprender los procesos internos desde el primer día. Es fácil de usar y muy completo.
                                </p>
                                <div class="tst-rating" aria-label="4 de 5">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>

                                </div>
                                <span class="tst-glow" aria-hidden="true"></span>
                            </article>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>




    <!-- CONTACT -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-12">
                    <div id="contactForm" role="form">
                        <div class="section-title">
                            <h2>Contáctanos <small>Estamos aquí para ayudarte, ¿tienes algún problema?</small></h2>
                        </div>

                        <div class="col-md-12 col-sm-12">
                            <!-- 👇 Añadimos id para JS -->
                            <input type="text"
                                class="form-control"
                                id="contactName"
                                placeholder="Ingresa tu Nombre Completo"
                                name="contactName"
                                required />
                            <br />
                            <input type="email"
                                class="form-control"
                                id="contactEmail"
                                placeholder="Ingresa tu correo electrónico"
                                name="contactEmail"
                                required />
                            <br />
                            <!-- 👇 IDs estáticos para poder referenciarlos desde app.js -->
                            <asp:TextBox ID="txtMotivo"
                                runat="server"
                                ClientIDMode="Static"
                                placeholder="Describe brevemente tu consulta o mensaje"
                                CssClass="form-control"
                                TextMode="MultiLine"
                                required=""></asp:TextBox>
                        </div>
                        <br />
                        <br />
                        <br />
                        <div class="col-md-4 col-sm-12">
                            <asp:Button ID="btnContact"
                                runat="server"
                                ClientIDMode="Static"
                                Text="Enviar Mensaje"
                                CssClass="btn-subscribe"
                                UseSubmitBehavior="false" />
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-sm-12">
                    <figure class="contact-image-pro" aria-label="Imagen de BlueSky">
                        <button type="button"
                            class="img-frame-min"
                            id="blueskyFrame"
                            aria-label="Imagen BlueSky"
                            data-tilt
                            data-tilt-max="10"
                            data-tilt-scale="1.05">
                            <img src="<%: ResolveUrl("~/images/BLUESKYYYY.png") %>"
                                alt="BlueSky Financial"
                                id="blueskyImg"
                                loading="lazy" />
                        </button>
                    </figure>
                </div>
            </div>
    </section>




    <script>
        // Foco accesible: enfoca el botón primario al abrirse
        $(document).on('shown.bs.modal', '.modal-pro', function () {
            var $first = $(this).find('.btn-primary:visible').first();
            if ($first.length) $first.focus();
        });

        // Si el modal es "static", al clicar fuera NO se cierra: le damos feedback con shake
        $(document).on('click', '.modal-pro', function (e) {
            var $dialog = $(this).find('.modal-dialog');
            var isClickOutside = $(e.target).is('.modal');
            if (isClickOutside && $(this).data('backdrop') === 'static') {
                $(this).addClass('shake');
                setTimeout(() => $(this).removeClass('shake'), 500);
            }
        });
    </script>

    <script>
        $(function () {
            // VanillaTilt opcional (si está cargado)
            if (window.VanillaTilt) {
                VanillaTilt.init(document.querySelectorAll('.pro-frame[data-tilt]'), {
                    max: 8, speed: 600, perspective: 900, glare: true, "max-glare": 0.18
                });
            }
            // Accesibilidad: al abrir modal, foco en botón cerrar
            $('#modalZoomAbout').on('shown.bs.modal', function () {
                $(this).find('.close').focus();
            });
        });
    </script>

    <script>
        $(function () {
            // Interacción 3D con VanillaTilt si está cargado (no cambia tus fotos)
            if (window.VanillaTilt) {
                VanillaTilt.init(document.querySelectorAll('#testimonial .tst-card[data-tilt]'), {
                    max: 8,
                    speed: 450,
                    perspective: 900,
                    glare: true,
                    "max-glare": 0.12
                });
            } else {
                // Fallback suave sin librería
                $('#testimonial .tst-card').on('mousemove', function (e) {
                    var $c = $(this), r = $c[0].getBoundingClientRect(),
                        cx = e.clientX - r.left, cy = e.clientY - r.top,
                        rx = (cy / r.height - .5) * -4, ry = (cx / r.width - .5) * 4;
                    $c.css('transform', 'translateY(-6px) rotateX(' + rx + 'deg) rotateY(' + ry + 'deg) scale(1.02)');
                }).on('mouseleave', function () {
                    $(this).css('transform', '');
                });
            }
        });
    </script>

    <script>
        (function () {
            var $tc = $('#testimonial .owl-carousel');

            function refreshHeights() {
                // Forzamos un reflow y dejamos que Flexbox haga el trabajo
                // Ajuste extra por si Owl necesita recalcular
                if ($tc.data('owl.carousel')) {
                    $tc.trigger('refresh.owl.carousel');
                }
            }

            // Cuando el carrusel se inicializa o cambia de tamaño, aseguramos alturas
            $tc.on('initialized.owl.carousel refreshed.owl.carousel resized.owl.carousel translated.owl.carousel', function () {
                // Tick corto para esperar layout/imágenes
                setTimeout(refreshHeights, 0);
            });

            // Si ya estaba inicializado cuando cargas este script:
            if ($tc.hasClass('owl-loaded')) {
                setTimeout(refreshHeights, 0);
            }

            // Re-igualar al cargar completamente (imágenes incluidas)
            $(window).on('load', function () {
                setTimeout(refreshHeights, 0);
            });

            // Fallback extra: si cambian fuentes o el usuario rota pantalla
            var ro;
            if ('ResizeObserver' in window) {
                ro = new ResizeObserver(function () { refreshHeights(); });
                ro.observe(document.body);
            }
        })();
    </script>
</asp:Content>
