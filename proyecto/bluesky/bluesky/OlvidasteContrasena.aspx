<%@ Page Title="Recuperar contraseña" Language="C#" MasterPageFile="~/Auth.Master" AutoEventWireup="true" CodeBehind="OlvidasteContrasena.aspx.cs" Inherits="bluesky.OlvidasteContrasena" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  <style>
    /* Estilos consistentes con tu login */
    .auth-page{
      min-height: calc(100vh - 80px);
      background:#f7f7fb;
      display:flex; align-items:center; justify-content:center;
      padding:40px 15px;
    }
    .auth-card{
      width:100%; max-width:480px;
      border:0; border-radius:12px; background:#fff;
      box-shadow:0 12px 30px rgba(20,20,40,.08);
    }
    .auth-card .panel-body{ padding:32px; }
    .auth-brand{ display:flex; align-items:center; gap:10px; font-weight:600; font-size:18px; color:#4f4f6b; margin-bottom:6px; }
    .auth-brand i{ font-size:20px; }
    .auth-title{ margin:0 0 6px 0; font-size:22px; font-weight:600; color:#3b3b55; }
    .auth-subtitle{ margin:0 0 18px 0; color:#7a7a90; }
    .auth-label{ font-size:11px; font-weight:700; color:#7a7a90; letter-spacing:.3px; }
    .form-group{ margin-bottom:14px; }
    .form-control{ height:44px; border-radius:8px; }
    .auth-btn{ border-radius:8px; height:44px; font-weight:600; }
    .auth-back{ margin-top:12px; }
    .auth-back .btn{
      border-radius:8px; height:42px; font-weight:600;
      display:flex; align-items:center; justify-content:center; gap:6px;
    }
    .auth-sep{ position:relative; text-align:center; margin:18px 0 10px; }
    .auth-sep:before{ content:""; position:absolute; left:0; right:0; top:50%; height:1px; background:#ececf4; }
    .auth-sep span{ position:relative; background:#fff; padding:0 10px; color:#9a9ab3; font-size:12px; }
  </style>

  <div class="auth-page">
    <div class="auth-card panel panel-default">
      <div class="panel-body">

        <!-- Marca -->
        <div class="auth-brand">
          <i class="fa fa-unlock-alt"></i>
          <span>BlueSky</span>
        </div>

        <h3 class="auth-title">¿Olvidaste tu contraseña? 🔒</h3>
        <p class="auth-subtitle">Ingresa tu correo y te enviaremos instrucciones para restablecerla.</p>

        <!-- Formulario (solo front) -->
        <div class="form-group">
          <label class="auth-label">EMAIL</label>
          <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="tucorreo@ejemplo.com"></asp:TextBox>
        </div>

        <asp:Button ID="btnEnviarEnlace" runat="server"
            Text="Enviar enlace de restablecimiento"
            CssClass="btn btn-primary btn-block auth-btn" />

        <!-- Separador -->
        <div class="auth-sep"><span>o</span></div>

        <!-- Volver a Iniciar Sesión -->
        <div class="auth-back">
          <a href="<%: ResolveUrl("~/IniciarSesion.aspx") %>" class="btn btn-outline-secondary btn-block">
            <i class="fa fa-sign-in"></i> Volver al inicio de sesión
          </a>
        </div>

        <!-- Volver al Home -->
        <div class="auth-back">
          <a href="<%: ResolveUrl("~/Default.aspx") %>" class="btn btn-outline-secondary btn-block">
            <i class="fa fa-home"></i> Volver al inicio
          </a>
        </div>

      </div>
    </div>
  </div>
</asp:Content>
