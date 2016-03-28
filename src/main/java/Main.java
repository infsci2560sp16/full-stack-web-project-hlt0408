import java.sql.*;
import java.util.HashMap;
import java.util.ArrayList;
import java.util.Map;
import java.util.Arrays;

import java.net.URI;
import java.net.URISyntaxException;

import static spark.Spark.*;
import spark.template.freemarker.FreeMarkerEngine;
import spark.ModelAndView;
import static spark.Spark.get;

import com.heroku.sdk.jdbc.DatabaseUrl;

public class Main {

	public static void main(String[] args) {

		port(Integer.valueOf(System.getenv("PORT")));
		staticFileLocation("/public");
		
		get("/", (request, response) -> {
			Map<String, Object> attributes = new HashMap<>();
			attributes.put("title", "Car World");
			attributes.put("homeactive", true);

			return new ModelAndView(attributes, "index.ftl");
		}, new FreeMarkerEngine());
		
		get("/aboutus", (request, response) -> {
			Map<String, Object> attributes = new HashMap<>();
			attributes.put("title", "About Us");
			attributes.put("description", "From Here We Begin");
			attributes.put("aboutactive", true);

			return new ModelAndView(attributes, "aboutus.ftl");
		}, new FreeMarkerEngine());
		
		get("/inventory", (request, response) -> {
			Map<String, Object> attributes = new HashMap<>();
			attributes.put("title", "Inventory");
			attributes.put("description", "From What You Pick");
			attributes.put("inventoryactive", true);

			return new ModelAndView(attributes, "inventory.ftl");
		}, new FreeMarkerEngine());
		
		get("/contactus", (request, response) -> {
			Map<String, Object> attributes = new HashMap<>();
			attributes.put("title", "Contact Us");
			attributes.put("description", "From Where You Touch Us");
			attributes.put("contactactive", true);

			return new ModelAndView(attributes, "contactus.ftl");
		}, new FreeMarkerEngine());
		
		get("/item", (request, response) -> {
			Map<String, Object> attributes = new HashMap<>();
			attributes.put("title", "Item");
			attributes.put("description", "Details");

			return new ModelAndView(attributes, "item.ftl");
		}, new FreeMarkerEngine());
		
		get("/user-board", (request, response) -> {
			Map<String, Object> attributes = new HashMap<>();
			attributes.put("title", "User Board");
			attributes.put("userboardactive", true);

			return new ModelAndView(attributes, "user-board.ftl");
		}, new FreeMarkerEngine());
		
		get("/purchase-history", (request, response) -> {
			Map<String, Object> attributes = new HashMap<>();
			attributes.put("title", "Purchase History");
			attributes.put("purchasehistoryctive", true);

			return new ModelAndView(attributes, "purchase-history.ftl");
		}, new FreeMarkerEngine());
		
		get("/change-password", (request, response) -> {
			Map<String, Object> attributes = new HashMap<>();
			attributes.put("title", "Change Password");
			attributes.put("changepasswordactive", true);

			return new ModelAndView(attributes, "change-password.ftl");
		}, new FreeMarkerEngine());

		get("/hello", (req, res) -> "Hello World");

		// matches "GET /hello/foo" and "GET /hello/bar"
		// request.params(":name") is 'foo' or 'bar'
		get("/hello/:name", (request, response) -> {
			return "Hello: " + request.params(":name");
		});

		// matches "GET /say/hello/to/world"
		// request.splat()[0] is 'hello' and request.splat()[1] 'world'
		get("/say/*/to/*", (request, response) -> {
			return "splat parameters: " + Arrays.toString(request.splat());
		});

		get("/db", (req, res) -> {
			Connection connection = null;
			Map<String, Object> attributes = new HashMap<>();
			try {
				connection = DatabaseUrl.extract().getConnection();

				Statement stmt = connection.createStatement();
				stmt.executeUpdate("CREATE TABLE IF NOT EXISTS ticks (tick timestamp)");
				stmt.executeUpdate("INSERT INTO ticks VALUES (now())");
				ResultSet rs = stmt.executeQuery("SELECT tick FROM ticks");

				ArrayList<String> output = new ArrayList<String>();
				while (rs.next()) {
					output.add("Read from DB: " + rs.getTimestamp("tick"));
				}

				attributes.put("results", output);
				return new ModelAndView(attributes, "db.ftl");
			} catch (Exception e) {
				attributes.put("message", "There was an error: " + e);
				return new ModelAndView(attributes, "error.ftl");
			} finally {
				if (connection != null)
					try {
						connection.close();
					} catch (SQLException e) {
					}
			}
		}, new FreeMarkerEngine());

	}

}
