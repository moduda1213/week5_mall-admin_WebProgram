<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "vo.*" %>
<%@ page import = "dao.*" %>
<%@ page import="java.util.*" %>
<%@ page import = "java.sql.*" %>

<%
	request.setCharacterEncoding("utf-8");

 	int ordersId = Integer.parseInt(request.getParameter("ordersId"));
 	String ordersState = request.getParameter("ordersState");
 	OrdersAndProduct oap = new OrdersAndProduct();
 	OrdersDao ordersDao = new OrdersDao();
 	
 	oap = ordersDao.selectOrdersOne(ordersId);
 	oap.orders.ordersState = ordersState;
 	ordersDao.updateOrdersState(oap);
 	
	response.sendRedirect("/mall-admin/orders/ordersList.jsp");
%>