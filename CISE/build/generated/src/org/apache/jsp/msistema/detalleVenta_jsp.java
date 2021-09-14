package org.apache.jsp.msistema;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class detalleVenta_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/msistema/../WEB-INF/jspfAdmin/cStylos.jspf");
    _jspx_dependants.add("/msistema/../WEB-INF/jspfAdmin/menu-lateral.jspf");
    _jspx_dependants.add("/msistema/../WEB-INF/jspfAdmin/nav-admin.jspf");
    _jspx_dependants.add("/msistema/../WEB-INF/jspfAdmin/cJavaScrip.jspf");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <!--Bootstrap-->\n");
      out.write("        ");
      out.write("<!--Bootstrap v->4.3.1 -->\n");
      out.write("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\"\n");
      out.write("               crossorigin=\"anonymous\">\n");
      out.write("<!--Estilos-->\n");
      out.write("<link href=\"resource/css/estiloSistema.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<link href=\"resource/css/addProduc.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<!--fontawesome-->\n");
      out.write("<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.7.2/css/all.css\"\n");
      out.write("               crossorigin=\"anonymous\">\n");
      out.write("<!--Google fonts-->\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Roboto+Condensed\" rel=\"stylesheet\">\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Oswald\" rel=\"stylesheet\">\n");
      out.write("<!--ajax-->\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("<script src=\"//cdn.jsdelivr.net/npm/alertifyjs@1.11.2/build/alertify.min.js\"></script>");
      out.write("\n");
      out.write("        <!--CSS-->\n");
      out.write("        <title>Administrador</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

    HttpSession sessionOK = request.getSession();

      out.write("\n");
      out.write("<section>\n");
      out.write("    <div id=\"sideBar\" class=\"active\">\n");
      out.write("        <div class=\"contenedor-menu\">\n");
      out.write("            <ul class=\"menuCabecera\">\n");
      out.write("                <li><a href=\"#\">Administrador</a></li>\n");
      out.write("                <li><img src=\"resource/img/admin/perfil2.jpg\" class=\"imgPerfil\"></li>\n");
      out.write("                <li style=\"font-size: 12px;\"><a>");
      out.print(sessionOK.getAttribute("nombre") );
      out.write("</a></li>\n");
      out.write("            </ul>\n");
      out.write("            <ul class=\"menu\">\n");
      out.write("                <li><a href=\"sistema.jsp\"><i class=\"icono izquierda fa fa-home\"></i> Sistema</a></li>\n");
      out.write("                <li><a href=\"index.jsp\"><i class=\"icono izquierda fas fa-store\"></i>Catalogo</a></li>\n");
      out.write("                <li class=\"\"><a href=\"#\"><i class=\"icono izquierda fas fa-folder-plus\"></i>Productos<i class=\"icono derecha fa fa-chevron-down\"></i></a>\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/comproducto.do?txtAccion=addProducto\">Registrar Producto</a></li>\n");
      out.write("                        <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/comproducto.do?txtAccion=listProducto\">Lista Productos</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"\"><a href=\"#\"><i class=\"icono izquierda fas fa-file-export\"></i>Ventas<i class=\"icono derecha fa fa-chevron-down\"></i></a>\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/comproducto.do?txtAccion=venta\">Ventas</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"\"><a href=\"#\"><i class=\"icono izquierda far fa-file-alt\"></i>Reportes<i class=\"icono derecha fa fa-chevron-down\"></i></a>\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"#\">Reporte de Compra</a></li>\n");
      out.write("                        <li><a href=\"#\">Reporte de ventas</a></li>\n");
      out.write("                        <li><a href=\"#\">Reporte de productos</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/conusuario.do?txtAccion=cerrarSession\"><i class=\"icono izquierda fas fa-sign-out-alt\"></i>Cerrar Sesion</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("        <section id=\"navcont\" class=\"activa\">\n");
      out.write("            <!--Barra de navegacion-->\n");
      out.write("            ");
      out.write("<!--Barra de navegacion-->\n");
      out.write("<nav class=\"navbar\">\n");
      out.write("    <div class=\"toggle-btn\">\n");
      out.write("        <i class=\"fas fa-ellipsis-v\"></i>\n");
      out.write("    </div>\n");
      out.write("    <ul class=\"\">\n");
      out.write("        <li class=\"acti\"><a href=\"index.html\"><i class=\"far fa-envelope\"></i></a></li>\n");
      out.write("        <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/conusuario.do?txtAccion=cerrarSession\"><i class=\"fas fa-sign-out-alt\"></i></a></li>\n");
      out.write("        \n");
      out.write("    </ul>\n");
      out.write("</nav>");
      out.write("\n");
      out.write("            <!--Contenido-->\n");
      out.write("            <div class=\"container-fluid\" style=\"padding: 30px 10px;\">\n");
      out.write("                <div class=\"sistema\">\n");
      out.write("                                    <div class=\"addProducto\">                     \n");
      out.write("                    <!--Listado de productos guardados-->    \n");
      out.write("                    <div class=\"card cardespa\">\n");
      out.write("                        <div class=\"card-header\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-7\">\n");
      out.write("                                    <h5>Detalle Venta</h5>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-5\">\n");
      out.write("                                    <input class=\"form-control\" id=\"myInput\" type=\"text\" placeholder=\"Search..\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card-body\">                \n");
      out.write("                            <table class=\"table table-bordered table-hover\">\n");
      out.write("                                <thead class=\"table-primary\" align=\"center\">\n");
      out.write("                                    <!--ud.nombreCompleto,v.fecha,dv.totalventa,v.entregado,e.provincia+' '+e.departamento+' '+e.distrito as destino,e.direccion-->\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th scope=\"col\">#</th>\n");
      out.write("                                        <th scope=\"col\">Nombre Completo</th>\n");
      out.write("                                        <th scope=\"col\">Fecha de Venta</th>\n");
      out.write("                                        <th scope=\"col\">Total de Venta</th>\n");
      out.write("                                        <th scope=\"col\">Destino</th>\n");
      out.write("                                        <th scope=\"col\">Direccion</th>\n");
      out.write("                                        <th scope=\"col\">Estado</th>\n");
      out.write("                                        <th scope=\"col\">Opciones</th>\n");
      out.write("                                    </tr>\n");
      out.write("                                </thead>\n");
      out.write("                                <tbody id=\"myTable\" >\n");
      out.write("\n");
      out.write("                                </tbody>\n");
      out.write("                            </table>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        ");
      out.write("<!-- Optional JavaScript -->\n");
      out.write("<!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\"\n");
      out.write("crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"\n");
      out.write("crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" \n");
      out.write("crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("<!--Jquery and js-->\n");
      out.write("<script src=\"resource/js/jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"resource/js/mainSistema.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
