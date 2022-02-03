package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Person;

public class HelloWorldServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // This will load a JSP to the servlet
        getServletContext().getRequestDispatcher("/WEB-INF/helloWorldForm.jsp").forward(request, response);
        // after a JSP is loaded, we must end the method.
        return; // VERY IMPORTANT!
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // capture the parameters from the incoming post request
        String firstname = request.getParameter("first_name");
        String lastname = request.getParameter("last_name");

        Person person = new Person(firstname,lastname);
        
        // set the attributes to the request object
        request.setAttribute("person", person);
        
        // validation
        // if the parameters don't exist, or are empty,
        // load the form again
        if( firstname == null || firstname.equals("") || lastname == null || lastname.equals("") ){

            request.setAttribute("error", true);
            
            getServletContext().getRequestDispatcher("/WEB-INF/helloWorldForm.jsp").forward(request, response);
            return; // very important!
        }
 
        // load the jsp and pass along the request object with our new attributes!
        getServletContext().getRequestDispatcher("/WEB-INF/sayHello.jsp").forward(request, response);
        return;
    }
}
