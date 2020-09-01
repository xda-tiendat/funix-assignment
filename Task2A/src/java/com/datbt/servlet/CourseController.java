/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.datbt.servlet;



import com.datbt.error.ErrorDTO;
import com.datbt.user.UserDTO;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author xdati
 */
public class CourseController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * <!--<c:if test = "${userDTO.course == 'French'}">checked="checked"
                                            </c:if>-->
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific errorDTO occurs
     * @throws IOException if an I/O errorDTO occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        boolean f = true;
        ErrorDTO errorDTO = null;
        UserDTO userDTO = null;
        List<String> list = null;
        try {
            String fullname = request.getParameter("txtName");
            int age = Integer.parseInt(request.getParameter("txtAge"));
            String country = request.getParameter("combobox");
            String[] courses = request.getParameterValues("chkboxCourse");
            if(courses != null) {
                list = Arrays.asList(courses);
            }
             
            String language = request.getParameter("language");
            
            String course = "";
            if (courses != null) {
                for (String x : courses) {
                    course += x + ", ";
                }
            } else {
                if (errorDTO == null) {
                    errorDTO = new ErrorDTO();
                }
                f = false;
                errorDTO.setErrCourse("Choose a course please!");
            }
            
            
            
            if (fullname.replaceAll("\\s+", "").matches("[a-zA-Z]*")) {

            } else {
                f = false;
                if (errorDTO == null) {
                    errorDTO = new ErrorDTO();
                }
            errorDTO.setErrFName("Fullname can not contain digit.");
            
            }
            userDTO = new UserDTO(fullname, age, country, language, list);
            request.setAttribute("USER", userDTO);
            System.out.println("DTO: " +userDTO.getFullname() +"-"+ userDTO.getAge() +"-"+ userDTO.getCountry() +"-"+ userDTO.getCourses() +"-"+ userDTO.getLanguage());
            if (f == true) {
                
                //userDTO = new UserDTO(fullname, age, country, language, course);
//                System.out.println("DTO: " +userDTO.getFullname() +"-"+ userDTO.getAge() +"-"+ userDTO.getCountry() +"-"+ userDTO.getCourses() +"-"+ userDTO.getLanguage());
                
            }
        } catch (NumberFormatException ex) {
            f = false;
            if (errorDTO == null) {
                errorDTO = new ErrorDTO();
            }
            errorDTO.setErrAge("Enter number 18-40.");
        } finally {
            if (f == false) {
                request.setAttribute("ERROR", errorDTO);
                System.out.println("Error: " +errorDTO.getErrFName() + "--" +errorDTO.getErrAge() + "--" +errorDTO.getErrAge());
                request.getRequestDispatcher("CourseForm.jsp").forward(request, response);
            } else {
//                System.out.println("DTO: " +userDTO.getFullname() +"-"+ userDTO.getAge() +"-"+ userDTO.getCountry() +"-"+ userDTO.getCourses() +"-"+ userDTO.getLanguage());
                request.getRequestDispatcher("Page2.jsp").forward(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific errorDTO occurs
     * @throws IOException if an I/O errorDTO occurs
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
     * @throws ServletException if a servlet-specific errorDTO occurs
     * @throws IOException if an I/O errorDTO occurs
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
