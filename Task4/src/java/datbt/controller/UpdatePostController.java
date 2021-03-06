/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datbt.controller;

import datbt.model.AccountDTO;
import datbt.model.Constants;
import datbt.model.PostDAO;
import datbt.model.PostDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
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
public class UpdatePostController extends HttpServlet {

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
        HttpSession session = request.getSession();
        AccountDTO accDTO = (AccountDTO) session.getAttribute("accInfor");
        PostDTO postDTO = (PostDTO) session.getAttribute("postById");
        try {
            int num = postDTO.getPostId();
            String title = request.getParameter("txtTitle");
            String summary = request.getParameter("txtSummary");
            String content = request.getParameter("txtEditor");
            String optradio = request.getParameter("optradio");
            String username = accDTO.getUsername();
            long millis=System.currentTimeMillis();  
            Date timepost = new Date(millis);
            
            PostDAO postDAO = new PostDAO();
            boolean result = postDAO.doUpdatePost(num, title, summary, content, username, timepost, optradio);
            if (result != false) {
                request.setAttribute(Constants.MES_AUTHOR, "Updated");
            } else {
                request.setAttribute(Constants.MES_AUTHOR, "Update Fail");
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher("EditPost.jsp");
            rd.forward(request, response);
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
