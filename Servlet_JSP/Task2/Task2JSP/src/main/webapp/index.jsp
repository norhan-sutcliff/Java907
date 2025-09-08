<!DOCTYPE html>
<html>
<body>
    <form action="printInput.jsp" method="post">
        <label for="fullName">Full Name:</label>
        <input type="text" name="fullName" id="fullName"><br><br>
        <label for="password">Password:</label>
        <input type="text" name="password" id="password"><br><br>
        <label for="age">Age:</label>
        <input type="text" name="age" id="age"><br><br>
        <label>Address1:</label><br>
        <input type="radio" name="address1" value="Cairo"> Cairo<br>
        <input type="radio" name="address1" value="Alex"> Alex<br>
        <input type="radio" name="address1" value="Menofia"> Menofia<br><br>
        <label for="address2">Address2:</label>
        <select name="address2" id="address2">
            <option value="Cairo">Cairo</option>
            <option value="Alex">Alex</option>
            <option value="Menofia">Menofia</option>
        </select><br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
