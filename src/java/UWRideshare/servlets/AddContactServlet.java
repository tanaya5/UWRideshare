/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UWRideshare.servlets;

import UWRideshare.services.ManageProfileServices;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tanay
 */
public class AddContactServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       try
       {
          String email = req.getParameter("textemail");
          String contact = req.getParameter("textnumber");
          boolean flag=ManageProfileServices.addContact(contact,email);
           if (flag)
           {
               HttpSession s=req.getSession();
                s.setAttribute("email",email);
                resp.sendRedirect("VerificationPage.jsp");
           }
           else
           {
               String msg="unsuccessful";
               
               resp.sendRedirect("AddContact.jsp?msg="+msg);
           }

       }
       catch(Exception e)
               {
                   
               }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

}
