package edu.practica;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/tablas")
public class TablaMultiplicar extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html lang='es'>");
            out.println("<head>");
            out.println("    <meta charset='UTF-8'>");
            out.println("    <title>Tablas de Multiplicar</title>");
            out.println("    <style>");
            out.println("        body { font-family: Arial, sans-serif; margin: 30px; background-color: #f7f9fc; }");
            out.println("        h1 { color: #2c3e50; text-align: center; }");
            out.println("        .container { display: flex; flex-wrap: wrap; gap: 20px; justify-content: center; }");
            out.println("        .tabla-card { background: white; border: 1px solid #ddd; border-radius: 8px; padding: 15px; box-shadow: 0 2px 6px rgba(0,0,0,0.1); width: 180px; }");
            out.println("        .tabla-card h3 { margin-top: 0; color: #2980b9; border-bottom: 2px solid #2980b9; padding-bottom: 5px; text-align: center; }");
            out.println("        ul { list-style: none; padding: 0; margin: 0; }");
            out.println("        li { padding: 4px 0; border-bottom: 1px dashed #eee; font-size: 0.95em; }");
            out.println("    </style>");
            out.println("</head>");
            out.println("<body>");
            out.println("    <h1>Tablas de Multiplicar Dinámicas</h1>");
            out.println("    <div class='container'>");

            // Bucle exterior: genera las tablas del 1 al 5 (puedes ampliarlo al rango que quieras)
            for (int tabla = 1; tabla <= 5; tabla++) {
                out.println("        <div class='tabla-card'>");
                out.println("            <h3>Tabla del " + tabla + "</h3>");
                out.println("            <ul>");

                // Bucle interior: calcula cada multiplicación del 1 al 10
                for (int i = 1; i <= 10; i++) {
                    int resultado = tabla * i;
                    out.println("                <li>" + tabla + " &times; " + i + " = <strong>" + resultado + "</strong></li>");
                }

                out.println("            </ul>");
                out.println("        </div>");
            }

            out.println("    </div>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}