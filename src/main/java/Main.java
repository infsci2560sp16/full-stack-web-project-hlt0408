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
			Connection connection = null;

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

		post("/register", (req, res) -> {
			Connection connection = null;
			Map<String, Object> attributes = new HashMap<>();
			attributes.put("title", "Register");
			try {
				connection = DatabaseUrl.extract().getConnection();
				Statement stmt = connection.createStatement();
				stmt.executeUpdate(
						"CREATE TABLE IF NOT EXISTS users (fullname text, telephone text, email text primary key, password text, address text, city text, state text, zipcode int, usertype text, income int, marriage text, gender text, age int, businessCategory text, canContact boolean, contactmethod text)");
				String insert = "INSERT INTO users VALUES ('" + req.queryParams("fullname") + "', '"
						+ req.queryParams("telnum") + "', '" + req.queryParams("emailid") + "', '"
						+ req.queryParams("pword") + "', '" + req.queryParams("address") + "', '"
						+ req.queryParams("city") + "', '" + req.queryParams("state") + "', '"
						+ req.queryParams("zipcode") + "', '" + req.queryParams("usertype") + "', '"
						+ req.queryParams("income") + "', '" + req.queryParams("marriage") + "', '"
						+ req.queryParams("gender") + "', '" + req.queryParams("age") + "', '"
						+ req.queryParams("businessCategory") + "', '" + req.queryParams("canContact").equals("true")
						+ "', '" + req.queryParams("contactmethod") + "' )";
				System.out.println(insert);
				stmt.executeUpdate(insert);
				ResultSet rs = stmt.executeQuery("SELECT * FROM users");

				ArrayList<String> output = new ArrayList<String>();
				while (rs.next()) {
					output.add("Read from DB: " + rs.getString("email") + " " + rs.getInt("password"));
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

		post("/login", (req, res) -> {
			Connection connection = null;
			Map<String, Object> attributes = new HashMap<>();
			try {
				connection = DatabaseUrl.extract().getConnection();
				Statement stmt = connection.createStatement();
				stmt.executeUpdate(
						"CREATE TABLE IF NOT EXISTS users (fullname text, telephone text, email text primary key, password text, address text, city text, state text, zipcode int, usertype text, income int, marriage text, gender text, age int, businessCategory text, canContact boolean, contactmethod text)");
				ResultSet rs = stmt
						.executeQuery("SELECT * FROM users where email = '" + req.queryParams("email") + "'");

				if (rs.next() && req.queryParams("password").equals(rs.getString("password"))) {
					attributes.put("title", "Loged in");
					attributes.put("message", "You were successfully logged in now");
					User user = new User();
					user.fullname = rs.getString("fullname");
					user.telephone = rs.getString("telephone");
					user.email = rs.getString("email");
					user.password = rs.getString("password");
					user.address = rs.getString("address");
					user.city = rs.getString("city");
					user.state = rs.getString("state");
					user.zipcode = rs.getInt("zipcode");
					user.usertype = rs.getString("usertype");
					user.income = rs.getInt("income");
					user.marriage = rs.getString("marriage");
					user.gender = rs.getString("gender");
					user.age = rs.getInt("age");
					user.businessCategory = rs.getString("businessCategory");
					user.canContact = rs.getBoolean("canContact");
					user.contactMethod = rs.getString("contactmethod");

					attributes.put("user", user);
					// res.cookie("email", user.email, 3600, true);
					// res.cookie("password", user.password, 3600, true);
					return new ModelAndView(attributes, "user-board.ftl");
				} else {
					attributes.put("title", "Not logged in");
					attributes.put("message", "OOps! Wrong user name or password! You were not logged in");
					return new ModelAndView(attributes, "error.ftl");
				}
			} catch (Exception e) {
				attributes.put("title", "Not logged in");
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
