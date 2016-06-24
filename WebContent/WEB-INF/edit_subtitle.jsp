<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Editer les sous-titres</title>
</head>
<body>
    
    <form method="post"> 
    	fichier source:   
        <input type="text" name="FileNameSource" id="FileNameSource" value="${ FileNameSource }" size="35" />
        <c:if test="${ not empty FileNameDestination }">
       		<a href="http://localhost:8080/Subtitlor${ FileNameDestination }" style="position:fixed; top: 40px; right: 10px;">
    		    <button>fichier</button> 
     		</a>
        </c:if>
        <input type="submit" value="enregistrer" style="position:fixed; top: 10px; right: 10px;" />
 	    <table>
	        <c:forEach items="${ subtitles }" var="line" >
	        	<tr>
	        		<td style="text-align:right;"><c:out value="${ line.numLigne }" />     
	        		<td/>
	        		 <td>
	        		  <c:out value="${line.time }" />
	        		  </td>
	        		  </tr>
	        		      <c:forEach items="${ line.original }" var="line1" varStatus="status">
	        		       <tr>
	        		  		<td/>
	        		        <td>
	        		        <c:out value="${ line1 }" />
	        				</td>
	        				<td><input type="text" name="paragraphe${ line.numLigne }linge${ status.index }" id="paragraphe${ line.numLigne }linge${ status.index }" value="${ line.traduit[status.index] }" size="35" /></td>
	        				</tr>
	        				</c:forEach>
	        				<tr>
	        				 <td/>
	        				 </tr>	        	
	    	</c:forEach>
	    </table>
    </form>
</body>
</html>