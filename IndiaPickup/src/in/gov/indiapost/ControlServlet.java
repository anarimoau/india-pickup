package in.gov.indiapost;

//import in.gov.indiapost.service.RegistrationService;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;

/**
 * Servlet implementation class ControlServlet
 */

public class ControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 *      
	 */
	BusinessService register = new BusinessService();
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		
		
		if ("REGISTER_FORM".equalsIgnoreCase(request
				.getParameter("FORM_SUBMITTED"))) {

			String date, time, weight;

			date = request.getParameter("date");
			time = request.getParameter("time");
			weight = request.getParameter("weight");

			
			boolean result2 = register.packCheck(date, time, weight);

			if (result2) {
				register.setPackage(date, time, weight);
				
				request.setAttribute("reg", register);
				request.getRequestDispatcher("view3.jsp").forward(request, response);
				
				
				//request.getRequestDispatcher("view3.jsp").forward(request, response);
				//response.sendRedirect("view3.jsp");
				
			} else
				response.sendRedirect("errorview2.jsp");
		}
		
		else if ("REGISTER_ERROR".equalsIgnoreCase(request
				.getParameter("FORM_ERROR"))){
			
			response.sendRedirect("view1.jsp");
		}

		else {
			String firstName = null, lastName = null, email = null, addselect = null, address = null;

			firstName = request.getParameter("fname");
			lastName = request.getParameter("lname");
			email = request.getParameter("email");
			addselect = request.getParameter("addselect");
			address = request.getParameter("address");
			//System.out.println(address);
			
			boolean result = register.regAuthenticate(firstName, lastName,
					email, address, addselect);

			//System.out.println(firstName + "\n" + lastName + "\n" + email
			//		+ "\n" + addselect + "\n" + address);
			
			
			
			if (result) {
				register.setPersonal(firstName, lastName, email, address, addselect);
				response.sendRedirect("view2.jsp");
			} else {
				response.sendRedirect("errorview.jsp");
			}
		}
	}
}
