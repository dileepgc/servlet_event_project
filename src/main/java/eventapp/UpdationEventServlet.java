package eventapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updation")
public class UpdationEventServlet extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int id = Integer.parseInt(req.getParameter("id"));
		String title = (req.getParameter("title"));
		String location = (req.getParameter("location"));
		String date = (req.getParameter("date"));
		String guest = (req.getParameter("guest"));
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management_system", "root", "root");
			PreparedStatement ps = con.prepareStatement("update event set title=?,location=?,date=?,guest=? where id=?");
			ps.setString(1, title);
			ps.setString(2, location);
			ps.setString(3, date);
			ps.setString(4, guest);
			ps.setInt(5, id);
			int row=ps.executeUpdate();
			PrintWriter pw = resp.getWriter();
			pw.write("<h1>"+row+": Event is Updated"+"</h1>");
			ps.close();
			con.close();

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

}