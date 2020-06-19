package com.lithan.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.io.IOException;
import java.io.PrintWriter;


    public class LoginAction extends HttpServlet {
        private static final long serialVersionUID = 1L;
        public LoginAction() {
            super();
        }
        public String execute() throws ServletException, IOException {
        	return "success";
        }
        public void doGet(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
             
            HttpSession session = request.getSession();
             
            PrintWriter writer = response.getWriter();
            writer.println("Session ID: " + session.getId());
            writer.println("Creation Time: " + new Date(session.getCreationTime()));
            writer. println("Last Accessed Time: " + new Date(session.getLastAccessedTime()));
           
        }
	
}
