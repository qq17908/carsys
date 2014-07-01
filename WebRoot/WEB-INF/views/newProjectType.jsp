<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="taglib_include.jsp" %>

<html>
<head>
	<script type="text/javascript">
		function go(url)
		{
		    window.location = url;
		}
		
		function deleteContact(url)
		{
		    var isOK = confirm("您确定要删除该信息?");
		    if(isOK)
		    {
		        go(url);
		    }
		}
	</script>
    <title>新建</title>
</head>
<body style="font-family: Arial; font-size:smaller;">

<table  bgcolor="lightblue" width="750" height="500" align="center" style="border-collapse: collapse;" border="1" bordercolor="#006699" >
    <tr>
        <td align="center"><h3>新建项目类型</h3></td>
    </tr>
    <tr valign="top" align="center">
    <td align="center">
         <form:form action="saveProjectType1.do" method="post" commandName="newProjectType">
            
                <table width="500" style="border-collapse: collapse;" border="0" bordercolor="#006699" cellspacing="2" cellpadding="2">    
                    <tr>
                        <td width="100" align="right">序号</td>
                        <td width="150">
                        <form:input path="index"/></td>
                        <td align="left">
                        <form:errors path="index" cssStyle="color:red"></form:errors>
                        </td>
                    </tr>
                    
                    <tr>
                        <td width="100" align="right">名称</td>
                        <td><form:input path="projectType"/></td>
                        <td align="left"><form:errors path="projectType" cssStyle="color:red"></form:errors>  </td>
                    </tr>
                    <tr>
                        <td width="100" align="right">英文缩写</td>
                        <td><form:input path="projectTypeAbbr"/></td>
                        <td align="left">
                        <form:errors path="projectTypeAbbr" cssStyle="color:red"></form:errors>  </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center">
                        <input type="submit" name="" value="保存">
                        &nbsp;&nbsp;
                        <input type="reset" name="" value="重置">
                        &nbsp;&nbsp;
                        <input type="button"  value="返回" onclick="javascript:go('showProjectTypes.do');">
                        </td>
                    </tr>                    
                </table>            
        </form:form>
    </td> 
  </tr>
</table>
</body>
</html>