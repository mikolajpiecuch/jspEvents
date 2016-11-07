package web;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.StorageHelper;


@WebServlet(urlPatterns = "/delete")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServletContext context = getServletContext();
		StorageHelper events = (StorageHelper)context.getAttribute("storage");
		
		events.deleteEvent(Integer.parseInt(request.getParameter("index")));
		
		Msg msg = new Msg();
		
		msg.setCommType(EnCommType.success);
		msg.setMessage("Poprawnie usunięto");
		
		request.setAttribute("msg", msg);
		request.getRequestDispatcher("allEvents.jsp").forward(request, response);
	}

}
