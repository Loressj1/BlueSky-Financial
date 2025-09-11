<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cursos.aspx.cs" Inherits="bluesky.Cursos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* ===========================
           Filtros (dropdown look)
           =========================== */
        .crs2-filterbar {
            display: flex;
            gap: 22px;
            flex-wrap: wrap;
            margin: 10px 0 26px;
        }

        .crs2-dd {
            position: relative;
        }

            .crs2-dd > button {
                min-width: 230px;
                height: 44px;
                padding: 0 14px;
                border: 0;
                border-radius: 10px;
                color: #fff;
                font-weight: 800;
                background: #1E66F5;
                box-shadow: 0 6px 16px rgba(30,102,245,.25);
                display: flex;
                align-items: center;
                justify-content: space-between;
                gap: 10px;
                cursor: pointer;
            }

            .crs2-dd > ul {
                position: absolute;
                top: 48px;
                left: 0;
                min-width: 100%;
                background: #fff;
                border: 1px solid #E6E8F5;
                border-radius: 10px;
                padding: 8px;
                margin: 0;
                list-style: none;
                box-shadow: 0 12px 26px rgba(16,24,40,.12);
                display: none;
                z-index: 5;
            }

            .crs2-dd.open > ul {
                display: block;
            }

            .crs2-dd li > a {
                display: block;
                padding: 8px 10px;
                border-radius: 8px;
                text-decoration: none;
                color: #0b1220;
            }

                .crs2-dd li > a:hover {
                    background: #F3F6FF;
                }

        /* ===========================
           Grid / Cols
           =========================== */
        .crs2-grid {
            row-gap: 26px;
        }

            .crs2-grid [class*="col-"] {
                display: flex;
                margin-bottom: 34px; /* 👈 separa verticalmente las cards */
            }

        /* ===========================
           Card (ahora más grande)
           =========================== */
        .crs2-card {
            background: #fff;
            border: 1px solid #EAEFF5;
            border-radius: 16px;
            overflow: hidden;
            box-shadow: 0 10px 26px rgba(16,24,40,.08);
            display: flex;
            flex-direction: column;
            width: 100%;
            height: 100%;
            transition: transform .16s ease, box-shadow .16s ease, border-color .16s ease;
            min-height: 460px; /* altura mínima mayor para uniformidad */
        }

            .crs2-card:hover {
                transform: translateY(-4px);
                box-shadow: 0 16px 34px rgba(16,24,40,.12);
                border-color: #DFE5FF;
            }

        .crs2-img {
            position: relative;
        }

            .crs2-img img {
                width: 100%;
                height: 230px; /* ↑ imagen más alta */
                object-fit: cover;
                display: block;
            }

        .crs2-ribbon {
            position: absolute;
            left: 10px;
            top: 10px;
            padding: 4px 8px;
            border-radius: 6px;
            font-size: .9rem;
            font-weight: 800;
            color: #fff;
            background: #2F6DE0;
            box-shadow: 0 3px 10px rgba(47,109,224,.35);
        }

        /* Cuerpo: título arriba, meta abajo */
        .crs2-body {
            background: #fff;
            padding: 16px 18px 10px;
            display: flex;
            flex-direction: column;
            gap: 8px;
            flex: 1 1 auto;
            min-height: 1px;
            justify-content: flex-start;
        }

        .crs2-kind {
            position: relative;
            font-size: 1.15rem;
            padding-left: 10px;
            font-weight: 700;
            color: #1E66F5;
            width: max-content;
        }

            .crs2-kind::before {
                content: "";
                position: absolute;
                left: 0;
                top: 3px;
                width: 3px;
                height: 14px;
                background: #1E66F5;
                border-radius: 2px;
            }

        /* Título centrado y ajustable (más grande) */
        .crs2-name {
            margin: 4px 0 10px;
            font-weight: 900;
            font-size: 1.55rem;
            color: #0f172a;
            line-height: 1.35;
            text-align: center;
            white-space: normal;
            word-break: break-word;
            overflow: visible;
        }

        /* Metadatos pegados al fondo y en columna (ligeramente más grandes) */
        .crs2-meta {
            margin-top: auto;
            display: flex;
            flex-direction: column;
            gap: 8px;
            color: #475569;
            font-size: 1.20rem;
            line-height: 1.5;
        }

            .crs2-meta span {
                display: flex;
                align-items: center;
                gap: 8px;
            }

            .crs2-meta i {
                color: #3F47F5;
                font-size: 1.15rem;
            }

        .crs2-foot {
            padding: 14px 18px;
            border-top: 1px solid #EEF1F7;
            background: #fff;
            display: flex;
            justify-content: flex-end;
        }

        .crs2-more {
            font-weight: 800;
            color: #2A3DF5;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            font-size: 1.12rem;
            gap: 6px;
        }

            .crs2-more i {
                font-size: 18px;
            }

        /* ====== Título y contenedor ====== */
        .crs2-wrap {
            max-width: 1240px;
        }

        .crs2-title {
            font-weight: 900;
            letter-spacing: .2px;
            font-size: clamp(1.9rem,1.4vw + 1.3rem,2.4rem);
            margin: 0 0 16px;
            color: #0b1220;
            position: relative;
        }

            .crs2-title::after {
                content: "";
                display: inline-block;
                width: 48px;
                height: 6px;
                margin-left: 10px;
                border-radius: 999px;
                background: #1E66F5;
                box-shadow: 0 6px 14px rgba(30,102,245,.25);
                vertical-align: middle;
            }

        /* ====== Barra de búsqueda ====== */
        .crs2-searchbar {
            display: flex;
            align-items: center;
            gap: 14px;
            margin: 6px 0 22px;
        }

        .crs2-search {
            position: relative;
            flex: 1 1 auto;
            height: 56px;
            padding: 0 14px;
            background: #fff;
            border: 1px solid #E6E8F5;
            border-radius: 12px;
            box-shadow: 0 6px 18px rgba(16,24,40,.06);
            display: flex;
            align-items: center;
            transition: border-color .2s, box-shadow .2s;
        }

            .crs2-search:focus-within {
                border-color: #C7D2FE;
                box-shadow: 0 12px 28px rgba(99,102,241,.16);
            }

            .crs2-search i.fa-search {
                position: absolute;
                left: 16px;
                font-size: 18px;
                color: #64748b;
                pointer-events: none;
            }

            .crs2-search input {
                border: 0;
                outline: 0;
                background: transparent;
                height: 100%;
                width: 100%;
                font-size: 1.3rem; /* ⬆ tamaño de letra */
                font-weight: 500; /* un poco más marcado */
                color: #0b1220;
                padding-left: 36px; /* espacio para el ícono */
            }

                .crs2-search input::placeholder {
                    font-size: 1.2rem; /* ⬆ placeholder más grande */
                    color: #94a3b8;
                }

        .crs2-btn-search {
            height: 56px;
            padding: 0 28px;
            border: 0;
            border-radius: 12px;
            font-weight: 800;
            font-size: 1.2rem; /* ⬆ tamaño del texto del botón */
            letter-spacing: .3px;
            color: #0b1220;
            background: #F7B500;
            box-shadow: 0 10px 22px rgba(247,181,0,.35);
            transition: transform .06s ease, box-shadow .2s ease, background .2s ease;
        }

            .crs2-btn-search:hover {
                background: #E9AA00;
                box-shadow: 0 12px 26px rgba(233,170,0,.38);
            }

            .crs2-btn-search:active {
                transform: scale(.98);
            }

        /* ===========================
           Responsive
           =========================== */
        @media (max-width:1199px) {
            .crs2-card {
                min-height: 440px;
            }

            .crs2-img img {
                height: 220px;
            }
        }

        @media (max-width:991px) {
            .crs2-filterbar {
                gap: 12px;
            }

            .crs2-dd > button {
                min-width: 200px;
            }

            .crs2-img img {
                height: 210px;
            }
        }

        @media (max-width:767px) {
            .crs2-searchbar {
                flex-direction: column;
                align-items: stretch;
                gap: 10px;
            }

            .crs2-btn-search {
                width: 100%;
            }

            .crs2-card {
                min-height: 420px;
            }

            .crs2-img img {
                height: 200px;
            }
        }

        @media (max-width:575px) {
            .crs2-dd > button {
                width: 100%;
            }

            .crs2-img img {
                height: 190px;
            }

            .crs2-name {
                font-size: 1.35rem;
                line-height: 1.3;
            }
        }
    </style>

    <div class="container crs2-wrap">
        <!-- Título -->
        <h2 class="crs2-title">Filtro de búsqueda</h2>

        <!-- Buscador -->
        <div class="crs2-searchbar">
            <div class="crs2-search">
                <input type="text" placeholder="Buscar por" aria-label="Buscar cursos" />
                <i class="fa fa-search" aria-hidden="true"></i>
            </div>
            <button class="crs2-btn-search" type="button">Buscar</button>
        </div>

        <!-- Filtros (dropdown visual) -->
        <div class="crs2-filterbar">
            <div class="crs2-dd">
                <button type="button">Tipo de programa <i class='bx bx-chevron-down'></i></button>
                <ul>
                    <li><a href="#">Curso</a></li>
                    <li><a href="#">Diplomado</a></li>
                    <li><a href="#">Taller</a></li>
                </ul>
            </div>
            <div class="crs2-dd">
                <button type="button">Área <i class='bx bx-chevron-down'></i></button>
                <ul>
                    <li><a href="#">Finanzas</a></li>
                    <li><a href="#">Tecnología</a></li>
                    <li><a href="#">RR.HH.</a></li>
                </ul>
            </div>
            <div class="crs2-dd">
                <button type="button">Nivel <i class='bx bx-chevron-down'></i></button>
                <ul>
                    <li><a href="#">Inicial</a></li>
                    <li><a href="#">Intermedio</a></li>
                    <li><a href="#">Avanzado</a></li>
                </ul>
            </div>
            <div class="crs2-dd">
                <button type="button">Otros <i class='bx bx-chevron-down'></i></button>
                <ul>
                    <li><a href="#">Certificables</a></li>
                    <li><a href="#">Con SENCE</a></li>
                    <li><a href="#">Auto-ritmo</a></li>
                </ul>
            </div>
        </div>

        <!-- Grid de cards (↓ menos columnas para hacerlas más anchas) -->
        <div class="row crs2-grid">
            <div class="col-lg-4 col-md-6 col-sm-12">
                <article class="crs2-card">
                    <figure class="crs2-img">
                        <img src="images/EXCEL-PORTADA.jpeg" alt="Herramientas de Excel Básico" />
                    </figure>
                    <div class="crs2-body">
                        <span class="crs2-kind">Curso</span>
                        <h5 class="crs2-name">Herramientas de Excel Básico</h5>
                        <div class="crs2-meta">
                            <span><i class="fa fa-calendar"></i>25-09-2025</span>
                            <span><i class="fa fa-clock-o"></i>2 horas</span>
                            <span><i class="fa fa-dot-circle-o"></i>Modalidad: Online</span>
                        </div>
                    </div>
                    <div class="crs2-foot">
                        <a href="ExcelCurso.aspx" class="crs2-more">Ver más <i class="bx bx-chevron-right"></i></a>
                    </div>
                </article>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12">
                <article class="crs2-card">
                    <figure class="crs2-img">
                        <img src="images/WORD-PORTADA.jpeg" alt="Analítica web con Google Analytics 4" />
                    </figure>
                    <div class="crs2-body">
                        <span class="crs2-kind">Curso</span>
                        <h5 class="crs2-name">Herramientas básicas de Word</h5>
                        <div class="crs2-meta">
                            <span><i class="fa fa-calendar"></i>25-09-2025</span>
                            <span><i class="fa fa-clock-o"></i>1 mes</span>
                            <span><i class="fa fa-dot-circle-o"></i>Modalidad: Online</span>
                        </div>
                    </div>
                    <div class="crs2-foot">
                        <a href="#" class="crs2-more">Ver más <i class="bx bx-chevron-right"></i></a>
                    </div>
                </article>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12">
                <article class="crs2-card">
                    <figure class="crs2-img">
                        <img src="images/courses-image3.jpg" alt="IFRS en la organización" />
                    </figure>
                    <div class="crs2-body">
                        <span class="crs2-kind">Curso</span>
                        <h5 class="crs2-name">Aplicación de Normas internacionales de información</h5>
                        <div class="crs2-meta">
                            <span><i class="fa fa-calendar"></i>25-09-2025</span>
                            <span><i class="fa fa-clock-o"></i>1 mes</span>
                            <span><i class="fa fa-dot-circle-o"></i>Modalidad: Online</span>
                        </div>
                    </div>
                    <div class="crs2-foot">
                        <a href="#" class="crs2-more">Ver más <i class="bx bx-chevron-right"></i></a>
                    </div>
                </article>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12">
                <article class="crs2-card">
                    <figure class="crs2-img">
                        <img src="images/courses-image4.jpg" alt="SEO" />
                    </figure>
                    <div class="crs2-body">
                        <span class="crs2-kind">Curso</span>
                        <h5 class="crs2-name">Aplicación de técnicas para el posicionamiento web y SEO</h5>
                        <div class="crs2-meta">
                            <span><i class="fa fa-calendar"></i>25-09-2025</span>
                            <span><i class="fa fa-clock-o"></i>1 mes</span>
                            <span><i class="fa fa-dot-circle-o"></i>Modalidad: Online</span>
                        </div>
                    </div>
                    <div class="crs2-foot">
                        <a href="#" class="crs2-more">Ver más <i class="bx bx-chevron-right"></i></a>
                    </div>
                </article>
            </div>
        </div>

        <!-- Paginación (visual) -->
        <div class="row mt-4">
            <div class="col-12 d-flex justify-content-center">
                <nav aria-label="Paginación de cursos">
                    <ul class="pagination">
                        <li class="page-item disabled"><span class="page-link">Anterior</span></li>
                        <li class="page-item active" aria-current="page"><span class="page-link">1</span></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">Siguiente</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>

    <!-- JS mínimo para abrir/cerrar los dropdowns visuales -->
    <script>
        (function () {
            var dds = document.querySelectorAll('.crs2-dd');
            dds.forEach(function (dd) {
                var btn = dd.querySelector('button');
                btn.addEventListener('click', function (e) {
                    e.stopPropagation();
                    dds.forEach(x => { if (x !== dd) x.classList.remove('open'); });
                    dd.classList.toggle('open');
                });
            });
            document.addEventListener('click', function () { dds.forEach(x => x.classList.remove('open')); });
        })();
    </script>
</asp:Content>
