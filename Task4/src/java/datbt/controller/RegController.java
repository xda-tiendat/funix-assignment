/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datbt.controller;

import datbt.model.AccountDAO;
import datbt.model.Constants;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author xdati
 */
public class RegController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("txtUser");
        String password = request.getParameter("txtPass");
        String confirm = request.getParameter("txtConfirm");
        String fullname = request.getParameter("txtFullName");
        String role = "user";
        String url = "/Register.jsp";
        boolean next = true;
        try {
            AccountDAO accDAO = new AccountDAO();
            Boolean result = accDAO.findAccount(username);
            if (result == true) {
                next = false;
                request.setAttribute(Constants.MESSDUPLICATE, "Account duplicate in system");
            }
            if (password != confirm) {
                next = false;
                request.setAttribute("MESSCONFIRM", "Confirm not equal Password");
            }
            if (username.isEmpty() && password.isEmpty() && fullname.isEmpty()) {
                next = false;
                //request.setAttribute(Constants.MESSDUPLICATE, "Account duplicate in system");
            }
            if (next) {
                boolean insert = accDAO.insertAccount(username, password, fullname, role);
                if (insert == true) {
                    request.setAttribute(Constants.MES_LOGIN, "Register Secessfully, You can login!");
                    response.sendRedirect(request.getContextPath()+"/LoginController");
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher("/Register.jsp");
            rd.include(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
