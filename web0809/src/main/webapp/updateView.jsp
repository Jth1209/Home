<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update function</title>
</head>
<body>

	<form action="update.jsp" method="post">
		<input type="hidden" name = "id" value ="${id }">
		<div>
			<label for="name">제품명:</label> <input type="text" id="name"
				name="name" value="${dto.name }" required>
		</div>
		<div>
			<label for="description">설명:</label>
			<textarea id="description" name="description" required>${dto.description }</textarea>
		</div>
		<div>
			<label for="price">가격:</label> <input type="text" id="price"
				name="price" value="${dto.price }" required>
		</div>
		<div>
			<label for="stock">수량:</label> <input type="text" id="stock"
				name="stock" value="${dto.stock }" required>
		</div>
		<div>
			<input type="submit" value="Update Product">
		</div>
	</form>
</body>
</html>