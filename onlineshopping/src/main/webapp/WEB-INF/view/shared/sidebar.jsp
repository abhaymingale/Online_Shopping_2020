
<h3 class="my-4">Shop Category</h3>
<div class="list-group">
	<c:forEach items="${CategoryList}" var="category">
		<a href="${contextRoot}/show/category/${category.id}/products" class="list-group-item">${category.name}</a> 
	</c:forEach>
</div>