<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Demostración JSP: Java y HTML</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f6f9;
                color: #333;
                margin: 0;
                padding: 40px;
            }

            .container {
                max-width: 800px;
                margin: auto;
                background: #ffffff;
                padding: 30px;
                border-radius: 8px;
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            }

            h1 {
                color: #2c3e50;
                border-bottom: 2px solid #3498db;
                padding-bottom: 10px;
            }

            .java-box {
                background-color: #e8f4fd;
                border-left: 5px solid #3498db;
                padding: 15px;
                margin: 20px 0;
                font-family: monospace;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }

            th,
            td {
                border: 1px solid #ddd;
                padding: 10px;
                text-align: left;
            }

            th {
                background-color: #3498db;
                color: white;
            }

            tr:nth-child(even) {
                background-color: #f9f9f9;
            }
        </style>
    </head>

    <body>

        <div class="container">
            <!-- HTML Puro -->
            <h1>¡Hola mundo desde una página JSP!</h1>
            <p>Esta vista demuestra cómo se mezclan las etiquetas estándar de <strong>HTML</strong> con la lógica de
                programación en <strong>Java</strong>.</p>

            <%-- ZONA DE CÓDIGO JAVA (Scriptlet): Declaración de variables y lógica --%>
                <% String mensajeJava="HolaMundo procesado mediante Java" ; java.util.Date fechaActual=new
                    java.util.Date(); int hora=fechaActual.getHours(); String saludoMomento=(hora < 12) ? "Buenos días"
                    : (hora < 20) ? "Buenas tardes" : "Buenas noches" ; %>

                    <div class="java-box">
                        <strong>[Bloque de código Java incrustado]:</strong><br>
                        Variables calculadas en el servidor y listas para mostrarse en el HTML.
                    </div>

                    <!-- Uso de Expresiones JSP para incrustar variables Java dentro del HTML -->
                    <h2>Mensaje dinámico:</h2>
                    <p style="font-size: 1.2em; color: #e74c3c;">
                        <strong>
                            <%= mensajeJava %>
                        </strong>
                    </p>

                    <p>Te enviamos un saludo institucional: <em>
                            <%= saludoMomento %>
                        </em>. La hora exacta del servidor es: <strong>
                            <%= fechaActual %>
                        </strong></p>

                    <!-- HTML combinado con un bucle for en Java para generar filas de una tabla dinámicamente -->
                    <h3>Generación dinámica de elementos (Bucle Java en HTML):</h3>
                    <table>
                        <tr>
                            <th>Iteración / Fila</th>
                            <th>Elemento generado</th>
                            <th>Estado</th>
                        </tr>
                        <% for (int i=1; i <=3; i++) { %>
                            <tr>
                                <td>Fila número <%= i %>
                                </td>
                                <td>Elemento dinámico de prueba</td>
                                <td><span style="color: green;">Activo</span></td>
                            </tr>
                            <% } %>
                    </table>

                    <!-- HTML Estático Final -->
                    <footer style="margin-top: 40px; font-size: 0.9em; color: #7f8c8d; text-align: center;">
                        Desarrollado con Arquitectura Java Web y JSP.
                    </footer>
        </div>

    </body>

    </html>