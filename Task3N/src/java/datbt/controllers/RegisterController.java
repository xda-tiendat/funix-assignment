/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datbt.controllers;

import datbt.model.Authenticator;
import datbt.model.User;
import datbt.model.Error;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author xdati
 */
public class RegisterController extends HttpServlet {

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
        User userDTO = null;
        Error err = new Error();
        String url = "sign-up.jsp";
        String username = request.getParameter("txtUser");
        String password = request.getParameter("txtPass");
        String confirm = request.getParameter("txtConfirm");
        String fullname = request.getParameter("txtFullName");
        String email = request.getParameter("txtEmail");
        String role = "user";
        userDTO = new User(username, password, fullname, email, role);
        request.setAttribute("TMPUSER", userDTO);
        boolean next = true;
        try {
            if (checkUserName(username)) {
                
            } else {
                next = false;
                err.setErrUser("Contains no special characters such as $#@%^&*, the length must be > 6");
            }
            if (checkPass(password)) {
                if (password.equals(confirm)) {
                    
                } else {
                    err.setErrConfirm("Confirm is not equal.");
                    next =false;
                }
            } else {
                next = false;
                err.setErrPass("Must contain at least one capital letter, one digit, one special character, the length must be > 8");
            }
            if (fullname.trim().length() < 5) {
                next = false;
                err.setErrFullName("Fullname isn't format, the length must be > 5");
            }
            if (email.trim().length() < 5) {
                next = false;
                err.setErrEmail("Email isn't format, the length must be > 5");
            }
            if (next) {
                Authenticator authen = new Authenticator();
                userDTO = new User(username, password, fullname, email, role);
                if(authen.findUserMap(username) != false) {
                    System.out.println("You can't create new account. Please try new username.");
                    request.setAttribute("DUPLICATE", "Username exist in system, Please try ");
                } else {
                    authen.addUser(userDTO);
                    url = "login.jsp";
                }
                
            } else {
                request.setAttribute("ERROR", err);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        }
    }
    
    public boolean checkPass(String pass) {
        boolean next = true;
        if (pass.length() < 8) {
            next = false;
        } else {
            int t = 0;
            int dt = 0;
            int sp = 0;
            for (int i = 0; i < pass.length(); i++) {
                if (Character.isUpperCase(pass.charAt(i))) {
                    t++;
                }
                if (Character.isDigit(pass.charAt(i))) {
                    dt++;
                }
                if (pass.contains("$") || pass.contains("#") || pass.contains("@") || pass.contains("%")
                        || pass.contains("^") || pass.contains("&") || pass.contains("*") || pass.contains("!") || pass.contains("?")
                        || pass.contains("<") || pass.contains(">") || pass.contains("/") || pass.contains(".")) {
                    sp++;
                }
            }
            if (t == 0 || dt == 0 || sp == 0) {
                next = false;
            } 
        }
        return next;
    }
    
    public boolean checkUserName(String u) {
        boolean next = true;
        if (u.length() > 6) {
            for (int i = 0; i < u.length(); i++) {
                if (u.charAt(i) == '$' || u.charAt(i) == '#' || u.charAt(i) == '@' || u.charAt(i) == '^' || u.charAt(i) == '&' || u.charAt(i) == '*' || u.charAt(i) == ' ') {
                    next = false;
                } else {
                    System.out.println("Username is correct format!");
                }
            }
        } else {
            next = false;
        }
        return next;
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
