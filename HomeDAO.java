package com.iitc.cs487.teamf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.iitc.cs487.teamf.pojo.Home;

public class HomeDAO {

	public int verifyLogin(String user, String password) {
		boolean result = true;
		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			String sql1 = "select count(*) from login where username=?;";
			PreparedStatement statement = con.prepareStatement(sql1);
			statement.setString(1, user);

			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				if (rs.getInt(1) == 0) {
					result = false;
					con.close();
					return 1;
				}
			}
			if (result) {
				String sql2 = "select passwrd from login where username=?;";
				PreparedStatement statement1 = con.prepareStatement(sql2);
				statement1.setString(1, user);
				ResultSet rs1 = statement1.executeQuery();
				while (rs1.next()) {
					System.out.println(rs1.getString(1));
					if (!(rs1.getString(1).equals(password))) {
						con.close();
						return 2;
					}
				}
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	public String getRole(String username) {
		String role = null;
		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			String sql1 = "select role from login where username=?;";
			PreparedStatement statement = con.prepareStatement(sql1);
			statement.setString(1, username);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				role = rs.getString(1);
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return role;
	}

	public String getStudentId(String username) {
		String student_id = null;
		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			String sql1 = "select student_id from login where username=?;";
			PreparedStatement statement = con.prepareStatement(sql1);
			statement.setString(1, username);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				student_id = rs.getString(1);
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return student_id;
	}

	public ArrayList<String> getCoursesRegistered(String studentId) {
		ArrayList<String> list = new ArrayList<String>();
		System.out.println("Inside getCoursesRegistered " + studentId);
		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			String sql1 = "select course_id from student_info where student_id=?;";
			PreparedStatement statement = con.prepareStatement(sql1);
			statement.setString(1, studentId);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				list.add(rs.getString(1));
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public ArrayList<Home> getCourseInfo(ArrayList<String> courseList) {
		ArrayList<Home> courseInfo = new ArrayList<Home>();

		try {
			for (int i = 0; i < courseList.size(); i++) {
				DBConnection db = new DBConnection();
				Connection con = db.createCon();
				String sql1 = "select * from course where course_id=?;";
				PreparedStatement statement = con.prepareStatement(sql1);
				statement.setString(1, courseList.get(i));
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					Home home = new Home();
					home.setCourseId(rs.getString(1));
					home.setCourseName(rs.getString(2));
					home.setProfessor(rs.getString(3));
					home.setClasstime(rs.getString(4));
					home.setExamtime(rs.getString(5));
					home.setGradeInfo(rs.getString(6));
					home.setAssignmentInfo(rs.getString(7));
					home.setTaInfo(rs.getString(8));
					courseInfo.add(home);
				}
				con.close();
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return courseInfo;
	}

	public ArrayList<Home> getAllCourses() {
		ArrayList<Home> courseInfo = new ArrayList<Home>();

		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			String sql1 = "select * from course";
			PreparedStatement statement = con.prepareStatement(sql1);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				Home home = new Home();
				home.setCourseId(rs.getString(1));
				home.setCourseName(rs.getString(2));
				home.setProfessor(rs.getString(3));
				home.setClasstime(rs.getString(4));
				home.setExamtime(rs.getString(5));
				home.setGradeInfo(rs.getString(6));
				home.setAssignmentInfo(rs.getString(7));
				home.setTaInfo(rs.getString(8));
				courseInfo.add(home);
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return courseInfo;
	}

	public ArrayList<Home> remCourses(ArrayList<String> courseList) {
		ArrayList<Home> remCourses = new ArrayList<Home>();
		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			StringBuilder builder = new StringBuilder();
			builder.append("(");
			for (int i = 0; i < courseList.size(); i++) {
				builder.append("?,");
			}
			builder.append(")");
			String sql1 = "select * from course where course_id not in "
					+ builder.deleteCharAt(builder.length() - 2).toString();
			System.out.println(sql1);
			PreparedStatement statement = con.prepareStatement(sql1);
			for (int i = 0; i < courseList.size(); i++) {
				statement.setString(i + 1, courseList.get(i));
			}
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				Home home = new Home();
				home.setCourseId(rs.getString(1));
				home.setCourseName(rs.getString(2));
				home.setProfessor(rs.getString(3));
				home.setClasstime(rs.getString(4));
				home.setExamtime(rs.getString(5));
				home.setGradeInfo(rs.getString(6));
				home.setAssignmentInfo(rs.getString(7));
				home.setTaInfo(rs.getString(8));
				remCourses.add(home);
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return remCourses;
	}

	public String removeCourse(String courseId, String studentId) {
		String student_id = null;
		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			String sql1 = "delete from student_info where student_id=? and course_id=?;";
			PreparedStatement statement = con.prepareStatement(sql1);
			statement.setString(1, studentId);
			statement.setString(2, courseId);
			statement.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return student_id;
	}

	public String addCourse(String courseId, String studentId) {
		String student_id = null;
		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			String sql1 = "insert into student_info (student_id,course_id) values (?,?)";
			PreparedStatement statement = con.prepareStatement(sql1);
			statement.setString(1, studentId);
			statement.setString(2, courseId);
			statement.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return student_id;
	}

	public void courseRemove(String courseId) {
		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			String sql1 = "delete from course where course_id=?;";
			PreparedStatement statement = con.prepareStatement(sql1);
			statement.setString(1, courseId);
			statement.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public void courseAdd(Home home) {
		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			String sql1 = "insert into course values (?,?,?,?,?,?,?,?);";
			PreparedStatement statement = con.prepareStatement(sql1);
			statement.setString(1, home.getCourseId());
			statement.setString(2, home.getCourseName());
			statement.setString(3, home.getProfessor());
			statement.setString(4, home.getClasstime());
			statement.setString(5, home.getExamtime());
			statement.setString(6, home.getGradeInfo());
			statement.setString(7, home.getAssignmentInfo());
			statement.setString(8, home.getTaInfo());
			statement.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public ArrayList<Home> getAllBooks() {
		ArrayList<Home> allBooks = new ArrayList<Home>();
		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			String sql1 = "select * from library";
			PreparedStatement statement = con.prepareStatement(sql1);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				Home home = new Home();
				home.setBookId(rs.getString(1));
				home.setBookName(rs.getString(2));
				home.setAuthor(rs.getString(3));
				home.setVersion(rs.getString(4));
				home.setLocation(rs.getString(5));
				allBooks.add(home);
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return allBooks;
	}
	
	public ArrayList<String> getBooksRegistered(String studentId) {
		ArrayList<String> list = new ArrayList<String>();
		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			String sql1 = "select book_id from library_info where student_id=?;";
			PreparedStatement statement = con.prepareStatement(sql1);
			statement.setString(1, studentId);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				list.add(rs.getString(1));
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public ArrayList<Home> getMylib(ArrayList<String> bookList) {
		ArrayList<Home> bookInfo = new ArrayList<Home>();

		try {
			for (int i = 0; i < bookList.size(); i++) {
				DBConnection db = new DBConnection();
				Connection con = db.createCon();
				String sql1 = "select * from library where book_id=?;";
				PreparedStatement statement = con.prepareStatement(sql1);
				statement.setString(1, bookList.get(i));
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					Home home = new Home();
					home.setBookId(rs.getString(1));
					home.setBookName(rs.getString(2));
					home.setAuthor(rs.getString(3));
					home.setVersion(rs.getString(4));
					home.setLocation(rs.getString(5));
					bookInfo.add(home);
				}
				con.close();
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return bookInfo;
	}
	
	public ArrayList<Home> remBooks(ArrayList<String> bookList) {
		ArrayList<Home> remBooks = new ArrayList<Home>();
		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			StringBuilder builder = new StringBuilder();
			builder.append("(");
			for (int i = 0; i < bookList.size(); i++) {
				builder.append("?,");
			}
			builder.append(")");
			String sql1 = "select * from library where book_id not in "
					+ builder.deleteCharAt(builder.length() - 2).toString();
			System.out.println(sql1);
			PreparedStatement statement = con.prepareStatement(sql1);
			for (int i = 0; i < bookList.size(); i++) {
				statement.setString(i + 1, bookList.get(i));
			}
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				Home home = new Home();
				home.setBookId(rs.getString(1));
				home.setBookName(rs.getString(2));
				home.setAuthor(rs.getString(3));
				home.setVersion(rs.getString(4));
				home.setLocation(rs.getString(5));
				remBooks.add(home);
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return remBooks;
	}
	
	public String addBook(String bookId, String studentId) {
		String student_id = null;
		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			String sql1 = "insert into library_info values (?,?)";
			PreparedStatement statement = con.prepareStatement(sql1);
			statement.setString(1, studentId);
			statement.setString(2, bookId);
			statement.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return student_id;
	}
	
	public ArrayList<Home> getAllBooksRegistered() {
		ArrayList<Home> getRegList = new ArrayList<Home>();

		try {
				DBConnection db = new DBConnection();
				Connection con = db.createCon();
				String sql1 = "select * from library_info";
				PreparedStatement statement = con.prepareStatement(sql1);
				ResultSet rs = statement.executeQuery();
				while (rs.next()) {
					Home home = new Home();
					home.setStudentId(rs.getString(1));
					home.setBookId(rs.getString(2));
					getRegList.add(home);
				}
				con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return getRegList;
	}
	
	public void returnBook(String bookId, String studentId) {
		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			String sql1 = "delete from library_info where book_id=? and student_id =?;";
			PreparedStatement statement = con.prepareStatement(sql1);
			statement.setString(1, bookId);
			statement.setString(2, studentId);
			statement.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public ArrayList<Home> getNews(){
		ArrayList<Home> news = new ArrayList<Home>();
		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			String sql1 = "select * from news";
			PreparedStatement statement = con.prepareStatement(sql1);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				Home home = new Home();
				home.setHeading(rs.getString(1));
				home.setContent(rs.getString(2));
				home.setNewsId(rs.getString(3));
				news.add(home);
			}
			con.close();
	} catch (Exception e) {
		System.out.println(e);
	}
		return news;
	}
	
	public void deleteNews(String newsId) {
		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			String sql1 = "delete from news where newsId=?;";
			PreparedStatement statement = con.prepareStatement(sql1);
			statement.setString(1, newsId);
			statement.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public void addNews(Home home) {
		try {
			DBConnection db = new DBConnection();
			Connection con = db.createCon();
			String sql1 = "insert into news values (?,?,?);";
			PreparedStatement statement = con.prepareStatement(sql1);
			statement.setString(1, home.getHeading());
			statement.setString(2, home.getContent());
			statement.setString(3, home.getNewsId());
			statement.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}