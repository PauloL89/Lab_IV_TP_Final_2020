
package SERVLET;

import GESTORES.GestorParejas;
import MODELO.Pareja;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Paulo_PC
 */
@WebServlet(name = "ConfirmacionCompra", urlPatterns = {"/ConfirmacionCompra"})
public class ConfirmacionCompra extends HttpServlet 
{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        
        RequestDispatcher rd = request.getRequestDispatcher("VistasRegistrarVenta/ConfirmacionCompra.jsp");
        rd.forward(request, response);
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        
    }

  

}
