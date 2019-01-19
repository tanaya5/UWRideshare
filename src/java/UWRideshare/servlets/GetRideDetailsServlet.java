/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UWRideshare.servlets;

import UWRideshare.beans.RideBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tanay
 */
@WebServlet(name = "GetRideDetailsServlet", urlPatterns = {"/getridedetails"})
public class GetRideDetailsServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        try{
            int rideid=Integer.parseInt(req.getParameter("rideid"));
            System.out.println(rideid);
              RideBean objbean=new RideBean();
                 objbean=UWRideshare.services.RideServices.getRide(rideid);
                 resp.sendRedirect("RideDetails.jsp?path="+objbean.getPath());
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

   
}
