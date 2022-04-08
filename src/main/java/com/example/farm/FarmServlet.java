package com.example.farm;

import java.io.*;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.*;
import javax.servlet.annotation.*;



@WebServlet(name = "helloServlet", urlPatterns = {"/farm","/play"})
public class FarmServlet extends HttpServlet {
    AnimalFactory animalFactory = new AnimalFactory();
    public void init() {

        // nothing

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
    {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        out.println("get request received");
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {


        int pointerDegree = Integer.parseInt(request.getParameter("startDegrees"));
        Animal animal = animalFactory.spawn(pointerDegree);
        String message = animal.say();

        request.setAttribute("pointer", pointerDegree);
        request.setAttribute("call", message);
        getServletContext().getRequestDispatcher("/play.jsp").forward(request,response);


    }


    public void destroy() {
    }
}