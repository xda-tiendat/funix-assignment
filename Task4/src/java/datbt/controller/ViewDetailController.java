/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datbt.controller;

import datbt.model.Constants;
import datbt.model.PostDAO;
import datbt.model.PostDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author xdati
 */
public class ViewDetailController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        String title = "Welcome Back to my website";
        String btAction = request.getParameter("btAction");
        try {
            if (session.isNew()) {
                title = "Welcome to my website";
                session.setAttribute(Constants.WELCOME, title);
            }
            session.setAttribute(Constants.WELCOME, title);
            String postId = request.getQueryString();
            int num = 1;
            if (postId != null) {
                String[] output = postId.split("=");
                num = Integer.parseInt(output[1]);

                PostDAO postDAO = new PostDAO();
                PostDTO postDTO = postDAO.searchPostById(num);
                session.setAttribute(Constants.POSTBYID, postDTO);
                if (btAction != null) {
                    if (btAction.equals("View")) {
                        request.getRequestDispatcher("PostDetail.jsp").include(request, response);
                    }
                    if (btAction.equals("Edit")) {
                        request.getRequestDispatcher("EditPost.jsp").include(request, response);
                    }
                } else {
                    response.sendRedirect("Error.jsp");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Error.jsp");
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
