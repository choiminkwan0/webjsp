<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.FacilityDTO" %>
<%@ page import="dao.FacilityDAO" %>

<%
    String name = request.getParameter("name");
    if (name == null || name.trim().equals("")) {
        response.sendRedirect("facilitys.jsp");
        return;
    }

    FacilityDAO dao = FacilityDAO.getInstance();
    FacilityDTO facility = dao.getFacilityDTOByName(name);
    
    if (facility == null) {
        response.sendRedirect("exceptionNoFacilityName.jsp");
        return;
    }

    ArrayList<FacilityDTO> list = (ArrayList<FacilityDTO>) session.getAttribute("reservelist");
    if (list == null) {
        list = new ArrayList<FacilityDTO>();
        session.setAttribute("reservelist", list);
    }

    int cnt = 0;
    for (int i = 0; i < list.size(); i++) {
        FacilityDTO reserveQnt = list.get(i);
        if (reserveQnt.getFacilityName().equals(name)) {
            cnt++;
            int orderQuantity = reserveQnt.getQuantity() + 1;
            reserveQnt.setQuantity(orderQuantity);
            break;
        }
    }

    if (cnt == 0) {
        facility.setQuantity(1);
        list.add(facility);
    }

    response.sendRedirect("myPage.jsp");
%>