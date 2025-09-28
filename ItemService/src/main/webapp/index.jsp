<html>
<body>
<form action="ItemController?action=add-item" method="post">
    <input type="text" name="name" placeholder="Item Name" required />
    <input type="text" name="description" placeholder="Description" />
    <input type="number" name="price" placeholder="Price" step="0.01" required />
    <button type="submit">Add Item</button>
</form>
</body>
</html>
