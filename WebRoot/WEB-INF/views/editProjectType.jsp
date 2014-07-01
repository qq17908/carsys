<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="taglib_include.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  

<html>
<head>
	<script type="text/javascript">
		function go(url)
		{
		    window.location = url;
		}
		
		function deleteProjectType(url)
		{
		    var isOK = confirm("您确定要删除该信息?");
		   
		    if(isOK)
		    {
		        go(url);
		    }
		}
	</script>
    <title>编辑修改</title>
</head>
<body style="font-family: Arial; font-size:smaller;">

<table  bgcolor="lightblue" width="750" height="500" align="center" style="border-collapse: collapse;" border="1" bordercolor="#006699" >
    <tr>
        <td align="center"><h3>编辑项目类型</h3></td>
    </tr>
  <tr valign="top" align="center">
    <td align="center">
         <form:form action="updateProjectType.do" method="post" commandName="editProjectType">
                <table width="500" style="border-collapse: collapse;" border="0" bordercolor="#006699" cellspacing="2" cellpadding="2"> 
                	 <tr>
                        <td width="100" align="right">编号</td>
                        <td width="150">
                        <form:input path="id" readonly = "true"/></td>
                        <td align="left">
                        <form:errors path="id" cssStyle="color:red"></form:errors>
                        </td>
                    </tr>            
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
                    
                    <tr valign="bottom">
                        <td colspan="3" align="center">
                        <input type="button"  value="删除" onclick="javascript:deleteProjectType('deleteProjectType.do?id=${editProjectType.id}');">
                        &nbsp;&nbsp;
                        <input type="submit" name="" value="保存">
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
