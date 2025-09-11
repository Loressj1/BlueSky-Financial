<%@ Page Title="Curso: Excel Básico" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="ExcelCurso.aspx.cs" Inherits="bluesky.ExcelCurso" %>

<%@ MasterType VirtualPath="~/Site.Master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- HERO del curso -->
    <section class="hero hero--curso"
        style="--hero-img: url('<%: ResolveUrl("~/images/excel.jpg") %>');"
        aria-labelledby="curso-title">
        <div class="hero__overlay" aria-hidden="true"></div>

        <div class="hero__inner text-center">
            <h1 id="curso-title" class="hero__title">Herramientas de Excel básico
            </h1>
            <br />
            <div class="btn-row hero-btns">
                <asp:HyperLink ID="lnkPrograma" runat="server"
                    CssClass="btn btn-hero btn-left"
                    NavigateUrl="~/docs/programa-excel-basico.pdf"
                    Target="_blank" rel="noopener">
        Descargar programa
                </asp:HyperLink>

                <asp:HyperLink ID="lnkIniciar" runat="server"
                    CssClass="btn btn-hero btn-right"
                    NavigateUrl="~/CursosExcel/Inicio.aspx"
                    rel="noopener">
        Iniciar curso
                </asp:HyperLink>
            </div>
        </div>
    </section>
    <!-- META DEL CURSO (4 tarjetas) -->
    <section class="course-meta" aria-label="Información del curso">
        <div class="container">
            <ul class="meta-grid" role="list">
                <!-- 1) Fecha de inicio -->
                <li class="meta-card" role="listitem">
                    <div class="meta-topbar"></div>
                    <div class="meta-body">
                        <div class="meta-icon" aria-hidden="true">
                            <i class="fa fa-calendar-o"></i>
                        </div>
                        <h3 class="meta-title">Fecha de inicio</h3>
                        <p class="meta-value">
                            <asp:Label ID="lblFechaInicio" runat="server" Text="25-09-2025"></asp:Label>
                        </p>
                    </div>
                </li>

                <!-- 2) Modalidad -->
                <li class="meta-card" role="listitem">
                    <div class="meta-topbar"></div>
                    <div class="meta-body">
                        <div class="meta-icon" aria-hidden="true">
                            <i class="fa fa-chalkboard-teacher"></i>
                        </div>
                        <h3 class="meta-title">Modalidad</h3>
                        <p class="meta-value">
                            <asp:Label ID="lblModalidad" runat="server" Text="Online"></asp:Label>
                        </p>
                    </div>
                </li>

                <!-- 3) Nivel -->
                <li class="meta-card" role="listitem">
                    <div class="meta-topbar"></div>
                    <div class="meta-body">
                        <div class="meta-icon" aria-hidden="true">
                            <i class="fa fa-signal"></i>
                        </div>
                        <h3 class="meta-title">Nivel</h3>
                        <p class="meta-value">
                            <asp:Label ID="lblNivel" runat="server" Text="Básico"></asp:Label>
                        </p>
                    </div>
                </li>

                <!-- 4) Duración -->
                <li class="meta-card" role="listitem">
                    <div class="meta-topbar"></div>
                    <div class="meta-body">
                        <div class="meta-icon" aria-hidden="true">
                            <i class="fa fa-clock-o"></i>
                        </div>
                        <h3 class="meta-title">Duración</h3>
                        <p class="meta-value">
                            <asp:Label ID="lblDuracion" runat="server" Text="2 horas"></asp:Label>
                        </p>
                    </div>
                </li>
            </ul>
        </div>
    </section>
    <!-- SECCIÓN: Dirigido a -->
    <section class="course-target" aria-labelledby="target-title">
        <div class="container">
            <h2 id="target-title" class="course-target__title">Dirigido a</h2>
            <p class="course-target__text">
                Profesionales, personal administrativo, secretarias u otros trabajadores
            que requieran utilizar datos y planillas de cálculo.
            </p>
        </div>
    </section>
    <!-- SECCIÓN: Requisitos -->
    <section class="course-reqs" aria-labelledby="reqs-title">
        <div class="container">
            <h2 id="reqs-title" class="course-reqs__title">Requisitos</h2>

            <div class="course-reqs__block">
                <h3 class="course-reqs__subtitle">Conocimientos previos recomendados:</h3>
                <ul class="course-reqs__list">
                    <li>Uso básico de programas en ambiente Windows y habilidades para navegar por Internet.</li>
                    <li>Dominio básico de Microsoft Office.</li>
                </ul>
            </div>

            <div class="course-reqs__block">
                <h3 class="course-reqs__subtitle">Requerimientos técnicos sugeridos:</h3>
                <ul class="course-reqs__list">
                    <li>PC con 8 GB de RAM o más, navegador actualizado y conexión a Internet de al menos 300 Mbps.</li>
                    <li>Adobe Acrobat Reader (o similar) para abrir documentos PDF.</li>
                    <li>Uso de Microsoft 365 para asegurar compatibilidad con los contenidos del curso, ya que desde 2024, MS Office 2016 no tendrá soporte, y en 2025, tampoco lo tendrá MS Office 2019.</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- SECCIÓN: Módulos -->
    <section id="mods" class="course-mods" aria-labelledby="mods-title">
        <div class="container">
            <h2 id="mods-title" class="course-mods__title">Módulos del curso</h2>

            <div class="mods-grid">
                <!-- Módulo 1 -->
                <article class="mod-card" aria-labelledby="mod1-title">
                    <h3 id="mod1-title" class="mod-card__title">Módulo 1: Fundamentos de Excel</h3>
                    <p class="mod-card__subtitle">Interfaz, libros y hojas, navegación eficiente</p>
                    <ul class="mod-card__list">
                        <li>Estructura del libro y tipos de datos</li>
                        <li>Selección, autollenado y atajos</li>
                        <li>Guardar, compatibilidad y OneDrive</li>
                    </ul>
                    <div class="mod-card__actions">
                        <button type="button"
                            class="btn btn-mod-see"
                            data-bs-toggle="modal" data-bs-target="#modsModal1"
                            data-toggle="modal" data-target="#modsModal1"
                            aria-controls="modsModal1">
                            Ver más
                        </button>
                    </div>
                </article>

                <!-- Módulo 2 -->
                <article class="mod-card" aria-labelledby="mod2-title">
                    <h3 id="mod2-title" class="mod-card__title">Módulo 2: Formato, tablas y filtros</h3>
                    <p class="mod-card__subtitle">Presentación, limpieza y organización de datos</p>
                    <ul class="mod-card__list">
                        <li>Formato de celdas y estilos</li>
                        <li>Tablas de Excel y ordenamientos</li>
                        <li>Filtros avanzados y búsqueda</li>
                    </ul>
                    <div class="mod-card__actions">
                        <button type="button"
                            class="btn btn-mod-see"
                            data-bs-toggle="modal" data-bs-target="#modsModal2"
                            data-toggle="modal" data-target="#modsModal2"
                            aria-controls="modsModal2">
                            Ver más
                        </button>
                    </div>
                </article>

                <!-- Módulo 3 -->
                <article class="mod-card" aria-labelledby="mod3-title">
                    <h3 id="mod3-title" class="mod-card__title">Módulo 3: Funciones esenciales</h3>
                    <p class="mod-card__subtitle">Sumas, promedios y lógica básica</p>
                    <ul class="mod-card__list">
                        <li>Autosuma, PROMEDIO, MÍN, MÁX</li>
                        <li>CONTAR/CONTARA y referencias absolutas</li>
                        <li>SI básico y anidado (introducción)</li>
                    </ul>
                    <div class="mod-card__actions">
                        <button type="button"
                            class="btn btn-mod-see"
                            data-bs-toggle="modal" data-bs-target="#modsModal3"
                            data-toggle="modal" data-target="#modsModal3"
                            aria-controls="modsModal3">
                            Ver más
                        </button>
                    </div>
                </article>

                <!-- Módulo 4 -->
                <article class="mod-card" aria-labelledby="mod4-title">
                    <h3 id="mod4-title" class="mod-card__title">Módulo 4: Gráficos e impresión</h3>
                    <p class="mod-card__subtitle">Visualización y preparación de informes</p>
                    <ul class="mod-card__list">
                        <li>Gráficos básicos y personalización</li>
                        <li>Áreas de impresión y saltos de página</li>
                        <li>Encabezados, pies y exportación a PDF</li>
                    </ul>
                    <div class="mod-card__actions">
                        <button type="button"
                            class="btn btn-mod-see"
                            data-bs-toggle="modal" data-bs-target="#modsModal4"
                            data-toggle="modal" data-target="#modsModal4"
                            aria-controls="modsModal4">
                            Ver más
                        </button>
                    </div>
                </article>
            </div>
        </div>
    </section>

    <!-- MODAL 1 -->
    <div class="modal fade modal-mods" id="modsModal1" tabindex="-1" role="dialog"
        aria-labelledby="modsModalLabel1" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document" aria-modal="true">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 id="modsModalLabel1" class="modal-title" style="color: white;">Módulo 1: Fundamentos de Excel</h3>
                    <button type="button" class="close" data-bs-dismiss="modal" data-dismiss="modal" aria-label="Cerrar"
                        style="float: none; opacity: .95; color: #fff; text-shadow: none; font-size: 28px; line-height: 1;">
                    </button>
                </div>
                <div class="modal-body">
                    <ul class="mod-detail-list">
                        <li>Interfaz de Excel: cinta, pestañas, barra de fórmulas.</li>
                        <li>Gestión de archivos: crear, abrir, guardar, versiones.</li>
                        <li>Selección y edición rápida: autollenado, mover/copiar, deshacer.</li>
                        <li>Buenas prácticas de nomenclatura y compatibilidad (Microsoft 365).</li>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL 2 -->
    <div class="modal fade modal-mods" id="modsModal2" tabindex="-1" role="dialog"
        aria-labelledby="modsModalLabel2" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document" aria-modal="true">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 id="modsModalLabel2" class="modal-title" style="color: white;">Módulo 2: Formato, tablas y filtros</h3>
                    <button type="button" class="close" data-bs-dismiss="modal" data-dismiss="modal" aria-label="Cerrar"
                        style="float: none; opacity: .95; color: #fff; text-shadow: none; font-size: 28px; line-height: 1;">
                    </button>
                </div>
                <div class="modal-body">
                    <ul class="mod-detail-list">
                        <li>Formato de número, alineación, bordes, estilos rápidos.</li>
                        <li>Convertir rangos en Tablas: beneficios y estilos.</li>
                        <li>Ordenamientos múltiples, filtros por criterios y por color.</li>
                        <li>Búsqueda, reemplazo y limpieza básica de datos.</li>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL 3 -->
    <div class="modal fade modal-mods" id="modsModal3" tabindex="-1" role="dialog"
        aria-labelledby="modsModalLabel3" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document" aria-modal="true">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 id="modsModalLabel3" class="modal-title" style="color: white;">Módulo 3: Funciones esenciales</h3>
                    <button type="button" class="close" data-bs-dismiss="modal" data-dismiss="modal" aria-label="Cerrar"
                        style="float: none; opacity: .95; color: #fff; text-shadow: none; font-size: 28px; line-height: 1;">
                    </button>
                </div>
                <div class="modal-body">
                    <ul class="mod-detail-list">
                        <li>Autosuma, SUMA, PROMEDIO, MÍN, MÁX, CONTAR/CONTARA.</li>
                        <li>Referencias absolutas ($) y relativas.</li>
                        <li>Función SI: estructuras simples y anidadas (introducción).</li>
                        <li>Errores comunes (#DIV/0!, #N/A) y cómo evitarlos.</li>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL 4 -->
    <div class="modal fade modal-mods" id="modsModal4" tabindex="-1" role="dialog"
        aria-labelledby="modsModalLabel4" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document" aria-modal="true">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 id="modsModalLabel4" class="modal-title" style="color: white;">Módulo 4: Gráficos e impresión</h3>
                    <button type="button" class="close" data-bs-dismiss="modal" data-dismiss="modal" aria-label="Cerrar"
                        style="float: none; opacity: .95; color: #fff; text-shadow: none; font-size: 28px; line-height: 1;">
                    </button>
                </div>
                <div class="modal-body">
                    <ul class="mod-detail-list">
                        <li>Gráficos de columnas, líneas y sectores: cuándo usar cada uno.</li>
                        <li>Etiquetas, leyendas y formatos rápidos.</li>
                        <li>Área de impresión, saltos de página y escala.</li>
                        <li>Encabezados/pies, márgenes y exportación a PDF.</li>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>
    <!-- ================================
     SECCIÓN: Metodología y certificación
     ================================ -->
    <section id="methodology" class="methodology-pro v2" aria-labelledby="methodology-title" style="padding: 56px 0 72px; background: #fff;">
        <div class="container" style="max-width: 1100px;">
            <header class="text-center" style="margin-bottom: 18px;">
                <h2 id="methodology-title" class="methodology-title" style="font-weight: 900; letter-spacing: .2px; line-height: 1.15; font-size: clamp(2rem,1.2vw + 1.7rem,2.6rem); margin: 0; color: #0f172a;">Metodología y certificación
                </h2>
                <div class="methodology-accent" aria-hidden="true" style="width: 120px; height: 6px; margin: 12px auto 0; border-radius: 999px; background: #f7b500; box-shadow: 0 6px 14px rgba(247,181,0,.35);"></div>
            </header>

            <!-- Grid 3 -> 2 -> 1 -->
            <ul class="methodology-grid" role="list" style="list-style: none; margin: 24px 0 0; padding: 0; display: grid; grid-template-columns: repeat(3,minmax(0,1fr)); gap: 22px;">
                <!-- ===== Card 1 ===== -->
                <li class="method-card" role="listitem" tabindex="0" data-step="1" aria-labelledby="m1-title"
                    style="position: relative; display: flex; gap: 14px; background: #fff; border: 1px solid #e9eef5; border-radius: 18px; box-shadow: 0 10px 28px rgba(0,0,0,.06); padding: 22px 18px; transition: transform .22s,box-shadow .22s,border-color .22s;">
                    <div class="method-visual" aria-hidden="true"
                        style="flex: 0 0 96px; height: 96px; border-radius: 14px; display: grid; place-items: center; background: linear-gradient(135deg,#eef4ff,#ffffff); color: #1E66F5; box-shadow: inset 0 0 0 1px #e7edf8,0 6px 16px rgba(16,24,40,.05);">
                        <!-- SVG 64x64 -->
                        <svg viewBox="0 0 64 64" width="64" height="64" class="ico">
                            <g fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="8" y="36" width="48" height="14" rx="3" />
                                <path d="M12 36v-6a4 4 0 0 1 4-4h32a4 4 0 0 1 4 4v6" />
                                <path d="M27 18l13 7-13 7-13-7 13-7z" />
                                <path d="M40 25v6" />
                                <circle cx="40" cy="34" r="3" />
                            </g>
                        </svg>
                    </div>

                    <div class="method-body" style="flex: 1;">
                        <h3 id="m1-title" class="method-title" style="margin: 2px 0 6px; font-weight: 800; font-size: 1.80rem; color: #0f172a;">Metodología</h3>
                        <p class="method-text" style="margin: 0 0 8px; color: #334155; font-size: 1.3rem; line-height: 1.65;">
                            Curso 100% online con enfoque constructivista: sesiones guiadas, micro-demostraciones y práctica autónoma con feedback.
                        </p>
                        <div class="method-actions" style="margin-top: 8px;">
                            <button type="button" class="btn method-more js-open-method-modal"
                                style="background: #1E66F5; color: #fff; border: 0; border-radius: 10px; padding: 8px 14px; font-weight: 700; box-shadow: 0 8px 20px rgba(30,102,245,.25);">
                                Más detalles
                            </button>
                        </div>

                        <!-- Contenido del modal (oculto) -->
                        <div class="method-modal-content" hidden>
                            <p>La metodología combina aprendizaje activo con recursos breves y aplicados:</p>
                            <ul>
                                <li>Clases en vivo + cápsulas video on-demand.</li>
                                <li>Material descargable por módulo y guías paso a paso.</li>
                                <li>Actividades con checklist de logro y feedback personalizado.</li>
                                <li>Foro y resolución de dudas en 24–48 h.</li>
                            </ul>
                        </div>
                    </div>
                </li>

                <!-- ===== Card 2 ===== -->
                <li class="method-card" role="listitem" tabindex="0" data-step="2" aria-labelledby="m2-title"
                    style="position: relative; display: flex; gap: 14px; background: #fff; border: 1px solid #e9eef5; border-radius: 18px; box-shadow: 0 10px 28px rgba(0,0,0,.06); padding: 22px 18px; transition: transform .22s,box-shadow .22s,border-color .22s;">
                    <div class="method-visual" aria-hidden="true"
                        style="flex: 0 0 96px; height: 96px; border-radius: 14px; display: grid; place-items: center; background: linear-gradient(135deg,#eef4ff,#ffffff); color: #1E66F5; box-shadow: inset 0 0 0 1px #e7edf8,0 6px 16px rgba(16,24,40,.05);">
                        <svg viewBox="0 0 64 64" width="64" height="64" class="ico">
                            <g fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="10" y="12" width="36" height="40" rx="4" />
                                <path d="M18 22h18M18 30h10M18 38h18" />
                                <path d="M52 14l2 4-14 30-6 2 2-6 14-30z" />
                            </g>
                        </svg>
                    </div>

                    <div class="method-body" style="flex: 1;">
                        <h3 id="m2-title" class="method-title" style="margin: 2px 0 6px; font-weight: 800; font-size: 1.80rem; color: #0f172a;">Evaluación</h3>
                        <p class="method-text" style="margin: 0 0 8px; color: #334155; font-size: 1.3rem; line-height: 1.65;">
                            Al final de cada módulo: prueba online de contenidos + trabajo breve de aplicación con rúbrica clara.
                        </p>

                        <div class="method-actions" style="margin-top: 8px;">
                            <button type="button" class="btn method-more js-open-method-modal"
                                style="background: #1E66F5; color: #fff; border: 0; border-radius: 10px; padding: 8px 14px; font-weight: 700; box-shadow: 0 8px 20px rgba(30,102,245,.25);">
                                Más detalles
                            </button>
                        </div>

                        <div class="method-modal-content" hidden>
                            <p>Evaluamos el progreso con foco en evidencias de aprendizaje:</p>
                            <ul>
                                <li>Cuestionarios online con retroalimentación inmediata (intentos controlados).</li>
                                <li>Trabajo aplicado por módulo con rúbrica visible desde el inicio.</li>
                                <li>Calificaciones ponderadas y tablero de avance.</li>
                            </ul>
                        </div>
                    </div>
                </li>

                <!-- ===== Card 3 ===== -->
                <li class="method-card" role="listitem" tabindex="0" data-step="3" aria-labelledby="m3-title"
                    style="position: relative; display: flex; gap: 14px; background: #fff; border: 1px solid #e9eef5; border-radius: 18px; box-shadow: 0 10px 28px rgba(0,0,0,.06); padding: 22px 18px; transition: transform .22s,box-shadow .22s,border-color .22s;">
                    <div class="method-visual" aria-hidden="true"
                        style="flex: 0 0 96px; height: 96px; border-radius: 14px; display: grid; place-items: center; background: linear-gradient(135deg,#eef4ff,#ffffff); color: #1E66F5; box-shadow: inset 0 0 0 1px #e7edf8,0 6px 16px rgba(16,24,40,.05);">
                        <svg viewBox="0 0 64 64" width="64" height="64" class="ico">
                            <g fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="10" y="10" width="44" height="30" rx="3" />
                                <path d="M18 22h16M18 28h10" />
                                <circle cx="44" cy="28" r="6" />
                                <path d="M40 40l4-6 4 6" />
                            </g>
                        </svg>
                    </div>

                    <div class="method-body" style="flex: 1;">
                        <h3 id="m3-title" class="method-title" style="margin: 2px 0 6px; font-weight: 800; font-size: 1.80rem; color: #0f172a;">Certificación</h3>
                        <p class="method-text" style="margin: 0 0 8px; color: #334155; font-size: 1.3rem; line-height: 1.65;">
                            Certificado digital validable para quienes cumplan requisitos de aprobación. Ideal para CV y LinkedIn.
                        </p>
                        <div class="method-actions" style="margin-top: 8px;">
                            <button type="button" class="btn method-more js-open-method-modal"
                                style="background: #1E66F5; color: #fff; border: 0; border-radius: 10px; padding: 8px 14px; font-weight: 700; box-shadow: 0 8px 20px rgba(30,102,245,.25);">
                                Más detalles
                            </button>
                        </div>

                        <div class="method-modal-content" hidden>
                            <p>Al aprobar el programa obtendrás:</p>
                            <ul>
                                <li>Certificado PDF con código de verificación en línea.</li>
                                <li>Instrucciones para añadir la credencial a LinkedIn.</li>
                                <li>Emisión dentro de 72 h posteriores a la aprobación final.</li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </section>

    <!-- ================================
     MODAL GENÉRICO (una sola vez)
     ================================ -->
    <div id="methodModal" class="modal fade modal-center" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content" style="border: 0; border-radius: 16px; overflow: hidden; box-shadow: 0 18px 50px rgba(16,24,40,.18);">
                <div class="modal-header" style="background: linear-gradient(135deg,#0ea5e9 0%,#6366f1 100%); color: #fff; border: 0; padding: 16px 18px;">
                    <h5 class="modal-title m-0" style="font-weight: 800;">Detalles</h5>
                    <button type="button" class="close" data-bs-dismiss="modal" data-dismiss="modal" aria-label="Cerrar" style="float: none; opacity: .95; color: #fff; text-shadow: none; font-size: 28px; line-height: 1;">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body" style="font-size: 1.08rem; line-height: 1.65; color: #1f2937;">
                    <!-- contenido dinámico -->
                </div>
                <div class="modal-footer" style="border: 0; padding: 14px 18px 18px;">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal" data-dismiss="modal" style="border-radius: 10px; font-weight: 700;">
                        Entendido
                    </button>
                </div>
            </div>
        </div>
    </div>





    <script>
        (function () {
            var modal = document.getElementById('modsModal');

            // Asigna el tab correcto al hacer click en "Ver más"
            document.querySelectorAll('[data-open-module]').forEach(function (btn) {
                btn.addEventListener('click', function () {
                    var idx = this.getAttribute('data-open-module'); // "1".."4"
                    var trigger = modal && modal.querySelector(
                        '[data-bs-target="#mod' + idx + '"], [data-target="#mod' + idx + '"], [href="#mod' + idx + '"]'
                    );
                    if (!trigger) return;

                    // Si ya está abierto, activar el tab igualmente
                    try {
                        if (window.bootstrap && bootstrap.Tab) {
                            new bootstrap.Tab(trigger).show();     // Bootstrap 5
                        } else if (window.$ && $(trigger).tab) {
                            $(trigger).tab('show');                // Bootstrap 3/4 (jQuery)
                        } else {
                            // Fallback: activar clases manuales
                            modal.querySelectorAll('.nav-link').forEach(function (el) { el.classList.remove('active'); });
                            modal.querySelectorAll('.tab-pane').forEach(function (el) {
                                el.classList.remove('show'); el.classList.remove('active');
                            });
                            trigger.classList.add('active');
                            var pane = modal.querySelector('#mod' + idx);
                            if (pane) { pane.classList.add('show'); pane.classList.add('active'); }
                        }
                    } catch (e) { /* noop */ }
                });
            });

            // Opcional: al abrir el modal sin botón previo, asegúrate que Módulo 1 esté visible
            if (modal) {
                modal.addEventListener('shown.bs.modal', function () {
                    var active = modal.querySelector('.nav-link.active');
                    if (!active) {
                        var first = modal.querySelector('.nav-link');
                        if (first) {
                            if (window.bootstrap && bootstrap.Tab) new bootstrap.Tab(first).show();
                            else if (window.$ && $(first).tab) $(first).tab('show');
                        }
                    }
                });
            }
        })();
    </script>

    <script>
        (function () {
            // Toggle "Más detalles"
            document.querySelectorAll('.method-more').forEach(function (btn) {
                btn.addEventListener('click', function () {
                    var target = document.querySelector(this.getAttribute('data-expand'));
                    if (!target) return;
                    var expanded = this.getAttribute('aria-expanded') === 'true';
                    this.setAttribute('aria-expanded', String(!expanded));
                    if (expanded) {
                        target.setAttribute('hidden', '');
                    } else {
                        target.removeAttribute('hidden');
                    }
                });
            });

            // Stepper: ir a la card y marcar activo
            var stepper = document.querySelector('.method-stepper');
            if (stepper) {
                stepper.addEventListener('click', function (e) {
                    var btn = e.target.closest('.step');
                    if (!btn) return;
                    var idx = btn.getAttribute('data-goto');
                    // activar visual del stepper
                    stepper.querySelectorAll('.step').forEach(function (s) { s.classList.remove('is-active'); });
                    btn.classList.add('is-active');
                    // foco/scroll a la card
                    var card = document.querySelector('.method-card[data-step="' + idx + '"]');
                    if (card) {
                        card.scrollIntoView({ behavior: 'smooth', block: 'nearest', inline: 'nearest' });
                        card.classList.add('card-highlight');
                        card.focus({ preventScroll: true });
                        setTimeout(function () { card.classList.remove('card-highlight'); }, 900);
                    }
                });
            }

            // Navegación con teclado entre cards (← →)
            var cards = Array.prototype.slice.call(document.querySelectorAll('.method-card'));
            cards.forEach(function (card, i) {
                card.addEventListener('keydown', function (ev) {
                    if (ev.key === 'ArrowRight' || ev.key === 'ArrowLeft') {
                        ev.preventDefault();
                        var nextIndex = (ev.key === 'ArrowRight') ? Math.min(i + 1, cards.length - 1) : Math.max(i - 1, 0);
                        cards[nextIndex].focus();
                    }
                });
            });
        })();
    </script>

    <script>
        (function () {
            var modalEl = document.getElementById('methodModal');
            if (!modalEl) return;

            var titleEl = modalEl.querySelector('.modal-title');
            var bodyEl = modalEl.querySelector('.modal-body');

            function openModal() {
                try {
                    if (window.bootstrap && bootstrap.Modal) {
                        new bootstrap.Modal(modalEl, { backdrop: true, keyboard: true }).show();   // Bootstrap 5
                    } else if (window.$ && $(modalEl).modal) {
                        $(modalEl).modal('show');                                              // Bootstrap 3/4
                    } else {
                        modalEl.style.display = 'block';                                       // Fallback simple
                    }
                } catch (e) { modalEl.style.display = 'block'; }
            }

            // Delegación: cualquier botón "Más detalles"
            document.addEventListener('click', function (ev) {
                var btn = ev.target.closest('.js-open-method-modal');
                if (!btn) return;
                ev.preventDefault();

                var card = btn.closest('.method-card');
                if (!card) return;

                // Título del modal = título de la card
                var t = card.querySelector('.method-title');
                titleEl.textContent = t ? t.textContent.trim() : 'Detalles';

                // Contenido del modal (prioriza bloque oculto)
                var src = card.querySelector('.method-modal-content');
                if (src) bodyEl.innerHTML = src.innerHTML;
                else {
                    var p = card.querySelector('.method-text');
                    bodyEl.innerHTML = '<p>' + (p ? p.textContent : 'Información no disponible.') + '</p>';
                }

                openModal();
            });

            // Stepper visual: marca activo y hace scroll suave a la card
            var stepper = document.querySelector('#methodology .method-stepper');
            if (stepper) {
                stepper.addEventListener('click', function (e) {
                    var s = e.target.closest('.step'); if (!s) return;
                    stepper.querySelectorAll('.step').forEach(function (n) { n.classList.remove('is-active'); n.style.background = '#dbe2ea'; n.style.boxShadow = 'none'; });
                    s.classList.add('is-active'); s.style.background = '#1E66F5'; s.style.boxShadow = '0 0 0 4px rgba(30,102,245,.15)';
                    var idx = s.getAttribute('data-goto');
                    var card = document.querySelector('.method-card[data-step="' + idx + '"]');
                    if (card) { card.scrollIntoView({ behavior: 'smooth', block: 'nearest' }); card.focus({ preventScroll: true }); }
                });
            }
        })();
    </script>

    <script>
        (function () {
            var modal = document.getElementById('modsModal');
            if (!modal) return;

            var titleEl = modal.querySelector('#modsModalLabel');
            var tabsWrap = modal.querySelector('.mods-tabs'); // <ul> de tabs
            var allTabs = modal.querySelectorAll('.mods-tabs .nav-link');
            var panes = modal.querySelectorAll('.tab-pane');

            // Estado base (multi-view por defecto)
            function resetMultiView() {
                modal.removeAttribute('data-single-view');
                if (tabsWrap) tabsWrap.style.display = ''; // mostrar tabs
                if (titleEl) titleEl.textContent = 'Contenido detallado';
                // Restaura el primer tab activo
                if (allTabs.length) {
                    allTabs.forEach(function (el) { el.classList.remove('active'); el.setAttribute('aria-selected', 'false'); });
                    allTabs[0].classList.add('active'); allTabs[0].setAttribute('aria-selected', 'true');
                }
                if (panes.length) {
                    panes.forEach(function (p, i) { p.classList.toggle('show', i === 0); p.classList.toggle('active', i === 0); });
                }
            }

            // Modo single-view (solo 1 módulo visible, sin tabs)
            function setSingleView(idx) {
                modal.setAttribute('data-single-view', 'true');
                if (tabsWrap) tabsWrap.style.display = 'none'; // ocultar tabs
                if (titleEl) titleEl.textContent = 'Contenido del Módulo ' + idx;

                // Oculta todo y muestra solo el pane solicitado
                panes.forEach(function (p) { p.classList.remove('show', 'active'); });
                var pane = modal.querySelector('#mod' + idx);
                if (pane) { pane.classList.add('show', 'active'); }

                // Desactiva visualmente los tabs (aunque estén ocultos)
                allTabs.forEach(function (el) { el.classList.remove('active'); el.setAttribute('aria-selected', 'false'); });
            }

            // 1) Click en “Ver más” de cada tarjeta -> abrir modal en single-view
            document.querySelectorAll('[data-open-module]').forEach(function (btn) {
                btn.addEventListener('click', function () {
                    var idx = this.getAttribute('data-open-module'); // "1".."4"
                    setSingleView(idx);
                    // Abre el modal (BS5/BS4/BS3/fallback)
                    try {
                        if (window.bootstrap && bootstrap.Modal) {
                            new bootstrap.Modal(modal, { backdrop: true, keyboard: true }).show();
                        } else if (window.$ && $(modal).modal) {
                            $(modal).modal('show');
                        } else {
                            modal.style.display = 'block';
                        }
                    } catch (e) { modal.style.display = 'block'; }
                });
            });

            // 2) Si el usuario abre el modal “por fuera” (sin botón), deja multi-view
            modal.addEventListener('show.bs.modal', function () {
                // Solo resetea si NO viene de single-view
                if (!modal.hasAttribute('data-single-view')) resetMultiView();
            });

            // 3) Al cerrar, siempre restablece a multi-view
            modal.addEventListener('hidden.bs.modal', function () { resetMultiView(); });

            // 4) Gestión manual de tabs SOLO en modo multi-view (por accesibilidad)
            document.addEventListener('click', function (ev) {
                if (!modal || !modal.isConnected) return;
                var btn = ev.target.closest('#modsModal .mods-tabs .nav-link');
                if (!btn) return;

                // Si estamos en single-view, bloquear la navegación por tabs
                if (modal.hasAttribute('data-single-view')) { ev.preventDefault(); return; }

                ev.preventDefault();
                var targetSel = btn.getAttribute('data-bs-target') || btn.getAttribute('data-target') || btn.getAttribute('href');
                if (!targetSel || targetSel.charAt(0) !== '#') return;

                allTabs.forEach(function (el) { el.classList.remove('active'); el.setAttribute('aria-selected', 'false'); });
                btn.classList.add('active'); btn.setAttribute('aria-selected', 'true');

                panes.forEach(function (pane) { pane.classList.remove('show', 'active'); });
                var pane = modal.querySelector(targetSel);
                if (pane) pane.classList.add('show', 'active');
            });
        })();
    </script>


</asp:Content>
