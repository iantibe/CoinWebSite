package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CoinItem;
import model.locationitem;

/**
 * Servlet implementation class addlocationdata
 */
@WebServlet("/addlocationdata")
public class addlocationdata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addlocationdata() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		CoinController controller = new CoinController();
		
		//get coin id number and location info from page
		int idNumber = Integer.parseInt(request.getParameter("id"));
		String location = request.getParameter("locationdata");
		
		//serach for coin by id number
		CoinItem item = controller.searchById(idNumber);
		
		//create instance location item to store
		locationitem itemtostore = new locationitem();
		
		//add coin to store and location info
		itemtostore.setCoin(item);
		itemtostore.setLocation(location);
		
		//now persist into database
		locationcontroller instance = new locationcontroller();
		instance.insert(itemtostore);
		
		getServletContext().getRequestDispatcher("/index.html").forward(request, response);
		
	}

}
