using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bluesky
{
    public partial class SiteMaster : MasterPage
    {

        public bool UsarMenuBasico { get; set; } = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            var fileName = Path.GetFileName(Request.Path);
            bool esCursos = fileName.Equals("Cursos.aspx", StringComparison.OrdinalIgnoreCase);

            if (UsarMenuBasico || esCursos)
            {
                phMenuPrincipal.Visible = false;
                phMenuBasico.Visible = true;
                phFooter.Visible = false; // sin mapa/newsletter en Cursos.aspx

                // ⭐ Ajuste visual solo en Cursos.aspx
                ulMenu.Attributes["style"] = "left:45%; transform:translateX(-50%); position:absolute;";

                return;
            }

            // Páginas normales
            phMenuPrincipal.Visible = true;
            phMenuBasico.Visible = false;
            phFooter.Visible = true;

            // Asegura que no quede con estilos forzados
            ulMenu.Attributes["style"] = "left:50%; transform:translateX(-50%); position:absolute;";
        }

        protected void btnExplorarCursos_Click(object sender, EventArgs e)
        {

        }

    }
}

