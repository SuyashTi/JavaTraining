<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

body{
background-image: url("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAHkAtQMBIgACEQEDEQH/xAAZAAEBAQEBAQAAAAAAAAAAAAAAAQMCBAf/xAAcEAEBAQADAQEBAAAAAAAAAAAAAQIREjEhQQP/xAAYAQEBAQEBAAAAAAAAAAAAAAAAAQIDBP/EABkRAQEBAQEBAAAAAAAAAAAAAAABETECEv/aAAwDAQACEQMRAD8A+rTDuZMxpIj3WuZlervMddRj6ZzKzLSQE1n1Tq0UNZ9fhMNODjgNZ9V6/GgGseh1aw4DWXROjbg4DWcwdWqcBrK5TrWticC6ysZ2PRYz1BqV576q30HXWuG0+ssNYOPp1AUYRfwAEX8AAgAAAAAAAIoJQoCVnqfWrjYsrCz795DV+g6usVtGWG0HO9UAZUAA4AAAAAFSiiIFIKI64iAlUARxt242LGNn0W+g6aYbRlhtkY9dUUGUUACgAAAAChyCJyqLAVzYqUARRUrjdds/6Cxjb9Et+g6tMNoxy2yOfpVSKMooAAAAARSAiCoKLPEBAAUABGW2rLfos6w174jrXoO0aYaxniNIOddciRRgVACKigAAR05BCgCgAAAAAJaz39aVnoWMNc8+C645+g6ytMNIxzppmjFjQcyryMqJysEUQBQQBUAUEBROQAOUtBROxLyBWe671eGWhqOKia9B1TOuGk0w/HcCxvNL2Z/h+Dnjvu6m2KwXG00vZkozjS6Ts4qzwMddos0yq5DGnKXTml8Ekddk7OAax1dHZxQWRey9uHETQY6u+XGtJP1KNSCAjT//2Q==");
}
</style>
</head>
<body>
 <h1>Product List</h1>
 
 <table border="1">
		<tr>
			<th>Prod_ID</th>
			<th>Prod_Name</th>
			<th>Prod_Desc</th>
			<th>Price</th>
			<th>Action</th>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.getProdId()}</td>
					<td>${product.getProdName()}</td>
					<td>${product.getProdDesc()}</td>
					<td>${product.getPrice()}</td>
					<td><a href ="update/${product.getProdId()}/${product.getProdName()}/${product.getProdDesc()}/${product.getPrice()}">Add to Cart</a></td>
					<!--  
					<td><a href ="delete/${product.getProdId()}">Delete</a>&nbsp;
					<a href ="update/${product.getProdId()}/${product.getProdName()}/${product.getProdDesc()}/${product.getPrice()}">Update</a>&nbsp;
					<a href ="update/${product.getProdId()}/${product.getProdName()}/${product.getProdDesc()}/${product.getPrice()}">Add to Cart</a>
					</td>
					-->
				</tr>

			</c:forEach>

	</table>

<h3 style="color:red;">${delMsg}</h3><br>

</body>
</html>