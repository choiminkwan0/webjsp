<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="jakarta.servlet.http.*"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>

<%  
    request.setCharacterEncoding("UTF-8");

    String realFolder = request.getServletContext().getRealPath("/resources/images");

    File dir = new File(realFolder);
    if (!dir.exists()) {
        dir.mkdirs();
    }

    String bookId=request.getParameter("bookId");
    String name=request.getParameter("name");
    String unitPrice=request.getParameter("unitPrice");
    String author=request.getParameter("author");
    String publisher=request.getParameter("publisher");
    String releaseDate=request.getParameter("releaseDate");
    String description=request.getParameter("description");
    String category=request.getParameter("category");
    String unitsInStock=request.getParameter("unitsInStock");
    String condition=request.getParameter("condition");
    
    int price = (unitPrice != null && !unitPrice.isEmpty()) ? Integer.parseInt(unitPrice) : 0;
    long stock = (unitsInStock != null && !unitsInStock.isEmpty()) ? Long.parseLong(unitsInStock) : 0;
    
    String fileName = "";
    Part part = request.getPart("bookImage");

    if (part != null && part.getSubmittedFileName() != null && !part.getSubmittedFileName().isEmpty()) {
        fileName = part.getSubmittedFileName();
        part.write(realFolder + File.separator + fileName);
    }

    PreparedStatement pstmt=null;
    ResultSet rs=null;

    String sql="SELECT * FROM book WHERE b_id=?";
    pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, bookId);
    rs=pstmt.executeQuery();

    if (rs.next()) {
        if (fileName!=null) {
            sql="UPDATE book SET b_name=?, b_unitPrice=?, b_author=?, b_description=?, b_publisher=?, b_category=?, b_unitsInStock=?, b_releaseDate=?, b_condition=?, b_fileName=? WHERE b_id=?";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setInt(2, price);
            pstmt.setString(3, author);
            pstmt.setString(4, description);
            pstmt.setString(5, publisher);
            pstmt.setString(6, category);
            pstmt.setLong(7, stock);
            pstmt.setString(8, releaseDate);
            pstmt.setString(9, condition);
            pstmt.setString(10, fileName);
            pstmt.setString(11, bookId);
            pstmt.executeUpdate();
        } else {
            sql="UPDATE book SET b_name=?, b_unitPrice=?, b_author=?, b_description=?, b_publisher=?, b_category=?, b_unitsInStock=?, b_releaseDate=?, b_condition=? WHERE b_id=?";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setInt(2, price);
            pstmt.setString(3, author);
            pstmt.setString(4, description);
            pstmt.setString(5, publisher);
            pstmt.setString(6, category);
            pstmt.setLong(7, stock);
            pstmt.setString(8, releaseDate);
            pstmt.setString(9, condition);
            pstmt.setString(10, bookId);
            pstmt.executeUpdate();
        }
    }
    if (rs!=null)
        rs.close();
    if (pstmt!=null)
        pstmt.close();
    if (conn!=null)
        conn.close();
    
    response.sendRedirect("editBook.jsp?edit=update");
%>