<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%-- /WebContent/ mailsend.jsp --%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="mb" class="mail.MailBean" ></jsp:useBean>
<jsp:setProperty name="mb" property="*" />
<%
	if (mb.sendMail()) {
		out.println("<center><H2> ������ �߼� �Ǿ����ϴ�.</H2>");
		out.println("<HR><a href=mailform.html>�����ۼ��ϱ�</a></center>"); 
	} else {
		out.println("<script>alert('���� ������ ������ ������ϴ�.'); history.go(-1);</script>");
	}
%>