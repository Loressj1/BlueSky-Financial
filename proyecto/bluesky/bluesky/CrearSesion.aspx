<%@ Page Title="Crear Cuenta" Language="C#" MasterPageFile="~/Auth.Master" AutoEventWireup="true" CodeBehind="CrearSesion.aspx.cs" Inherits="bluesky.CrearSesion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        /* Igual al login */
        .auth-page {
            min-height: calc(100vh - 80px);
            background: #f7f7fb;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 40px 15px;
        }

        .auth-card {
            width: 100%;
            max-width: 480px;
            border: 0;
            border-radius: 12px;
            background: #fff;
            box-shadow: 0 12px 30px rgba(20,20,40,.08);
        }

            .auth-card .panel-body {
                padding: 32px;
            }

        .auth-brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 600;
            font-size: 18px;
            color: #4f4f6b;
            margin-bottom: 6px;
        }

        .auth-title {
            margin: 0 0 6px 0;
            font-size: 22px;
            font-weight: 600;
            color: #3b3b55;
        }

        .auth-subtitle {
            margin: 0 0 18px 0;
            color: #7a7a90;
        }

        .form-group {
            margin-bottom: 14px;
        }

        .form-control {
            height: 44px;
            border-radius: 8px;
        }

        .auth-btn {
            border-radius: 8px;
            height: 44px;
            font-weight: 600;
        }

        .auth-register {
            text-align: center;
            margin: 14px 0 0;
        }

        .auth-sep {
            position: relative;
            text-align: center;
            margin: 18px 0 10px;
        }

            .auth-sep:before {
                content: "";
                position: absolute;
                left: 0;
                right: 0;
                top: 50%;
                height: 1px;
                background: #ececf4;
            }

            .auth-sep span {
                position: relative;
                background: #fff;
                padding: 0 10px;
                color: #9a9ab3;
                font-size: 12px;
            }

        .auth-social {
            display: flex;
            gap: 10px;
            justify-content: center;
        }

        .auth-back {
            margin-top: 14px;
        }

            .auth-back .btn {
                border-radius: 8px;
                height: 42px;
                font-weight: 600;
                display: flex;
                align-items: center;
                justify-content: center;
                gap: 6px; /* espacio entre icono y texto */
            }
    </style>

    <div class="auth-page">
        <div class="auth-card panel panel-default">
            <div class="panel-body">

                <!-- Logo / Marca -->
                <div class="auth-brand">
                    <i class="fa fa-user-plus"></i>
                    <span>BlueSky</span>
                </div>

                <h3 class="auth-title">Crea tu cuenta 🚀</h3>
                <p class="auth-subtitle">Únete y comienza tu experiencia en BlueSky</p>

                <!-- Formulario de Registro -->
                <asp:Panel ID="pnlRegister" runat="server" DefaultButton="btnRegister">

                    <!-- Usuario -->
                    <div class="form-group">
                        <label class="auth-label">Usuario</label>
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control input-lg" placeholder="Ingresa tu usuario"></asp:TextBox>
                    </div>

                    <!-- Email -->
                    <div class="form-group">
                        <label class="auth-label">Email</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control input-lg" placeholder="Ingresa tu correo"></asp:TextBox>
                    </div>

                    <!-- Password -->
                    <div class="form-group">
                        <label class="auth-label">Contraseña</label>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control input-lg" placeholder="********"></asp:TextBox>
                    </div>

                    <!-- Términos -->
                    <div class="form-group auth-actions">
                        <label class="checkbox-inline">
                            <asp:CheckBox ID="chkTerms" runat="server" />
                            Acepto los <a href="#">términos y condiciones</a>
                        </label>
                    </div>

                    <!-- Botón Registrar -->
                    <asp:Button ID="btnRegister" runat="server" Text="Crear cuenta" CssClass="btn btn-primary btn-lg btn-block auth-btn" />

                </asp:Panel>

                <!-- Ya tienes cuenta -->
                <p class="auth-register">
                    ¿Ya tienes una cuenta? <a href="IniciarSesion.aspx" class="auth-link">Inicia sesión</a>
                </p>

                <!-- Separador -->
                <div class="auth-sep"><span>o</span></div>

                <!-- Social -->
                <div class="auth-social">
                    <a href="#" class="btn btn-default"><i class="fa fa-facebook"></i></a>
                    <a href="#" class="btn btn-default"><i class="fa fa-google-plus"></i></a>
                    <a href="#" class="btn btn-default"><i class="fa fa-twitter"></i></a>
                </div>


                <!-- Botón volver al inicio -->
                <div class="auth-back">
                    <asp:Button ID="btnVolverInicio" runat="server"
                        Text="← Volver al inicio"
                        CssClass="btn btn-outline-secondary btn-block auth-btn"
                        OnClick="btnVolverInicio_Click" />
                </div>

            </div>
        </div>
    </div>

</asp:Content>
