<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="taglib_include.jsp" %>

<html>
<head>
	<title>项目类型</title>
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
</head>

<body style="font-family: Arial; font-size:smaller;">
    <center>
    <form action="searchContacts.do" method="post"> 
            <table style="border-collapse: collapse;" border="0" bordercolor="#006699" width="500">
            <tr>
                <td>Enter ProjectType Name</td>
                <td><input type="text" name="name"/>
                    &nbsp;&nbsp;<input type="button" value="查询" onclick="javascript:go('searchProjectType.do');"/>
                    &nbsp;&nbsp;<input type="button" value="新建" onclick="javascript:go('addProjectType.do');"/>
            </td></tr>
        </table>
    </form>
    
    <table style="border-collapse: collapse;" border="1" bordercolor="#006699" width="500">
        <tr bgcolor="lightblue">
            <th>序号</th>
            <th>项目类型</th>            
            <th>英文缩写</th>    
            <th></th>
        </tr>
        <c:if test="${empty SEARCH_PROJECTTYPE_RESULTS_KEY}">
        <tr>
            <td colspan="3">亲，无匹配结果哦！</td>
        </tr>
        </c:if>
        <c:if test="${! empty SEARCH_PROJECTTYPE_RESULTS_KEY}">
            <c:forEach var="projectType" items="${SEARCH_PROJECTTYPE_RESULTS_KEY}">        
            <tr>
                <td><c:out value="${projectType.index}"></c:out></td>
                <td><c:out value="${projectType.projectType}"></c:out></td>
                <td><c:out value="${projectType.projectTypeAbbr}"></c:out> </td>
                <td>
                    &nbsp;<a href="updateProjectType.do?id=${projectType.id}">编辑</a>
                    &nbsp;&nbsp;<a href="javascript:deleteContact('deleteProjectType.do?id=${projectType.id}');">删除</a>
                </td>
            </tr>
            </c:forEach>
        </c:if>                
    </table>    
   
    </center>
        
</body>
</html>