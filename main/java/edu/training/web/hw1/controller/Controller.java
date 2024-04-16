package edu.training.web.hw1.controller;

import edu.training.web.hw1.logic.LogicStub;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
    private static final long serialVersionUID = 1L;

    //
    private final LogicStub logic = new LogicStub();

    public Controller() {
        super();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doRequest(request, response);
    }

    private void doRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = request.getParameter("command");
        switch (command) {
            case "auth":
                String login = request.getParameter("username");
                String password = request.getParameter("password");
                if (logic.checkAuth(login, password)) {


                    RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/auth.jsp");
                    dispatcher.forward(request, response);
                } else {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
                    dispatcher.forward(request, response);
                }
                break;
            case "registration":
                RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/registration.jsp");
                dispatcher.forward(request, response);
                break;
            case "new_user_registration":
                System.out.println("username " + request.getParameter("username"));
                System.out.println("login " + request.getParameter("email"));
                System.out.println("password " + request.getParameter("password"));
                System.out.println("newpassword " + request.getParameter("newpassword"));
                dispatcher = request.getRequestDispatcher("WEB-INF/jsp/authentication.jsp");
                dispatcher.forward(request, response);
                break;
            case "main":
                dispatcher = request.getRequestDispatcher("WEB-INF/jsp/main.jsp");
                dispatcher.forward(request, response);
                break;
        }
    }
}


