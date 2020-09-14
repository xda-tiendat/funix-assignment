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
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author xdati
 */
public class PostController extends HttpServlet {

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
        
        try {
            //xu li phan trang
            String index = request.getQueryString();
            int num = 1;
            if (index != null) {
                String[] output = index.split("=");
                num = Integer.parseInt(output[1]);
            }

            PostDAO postDAO = new PostDAO();
            
            //danh sach new post
            Map<Integer, String> mapTitle = postDAO.doLoadTitle();
            request.setAttribute(Constants.MAPTITLES, mapTitle);
            
            int count = postDAO.doCount("published");
            int size = 3;
            int endPage = count / size;
            if (count % size != 0) {
                endPage++;
            }
            //hien thi bai dang
            List<PostDTO> list = postDAO.getTop3(num);
            request.setAttribute(Constants.LISTPOSTS, list);
            //so trang cuoi cung
            request.setAttribute(Constants.ENDPAGE, endPage);
            //System.out.println(num);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            request.getRequestDispatcher("Posts.jsp").forward(request, response);
            //response.sendRedirect("Posts.jsp");
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
