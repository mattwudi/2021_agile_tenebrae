<%--
  Created by IntelliJ IDEA.
  User: ben.julian
  Date: 2/21/21
  Time: 9:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <%--Javascript--%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

    <!-- Link to our CSS page -->
    <link href="assets/css/screenCSS.css" rel="stylesheet">

    <!-- Google fonts link -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Fondamento&family=Merienda:wght@700&display=swap" rel="stylesheet">

    <title>Dungeon Masters' Uber cool stat tracker!</title>
</head>

<body background="assets/img/background.jpg">
<%@include file="includes/navbar.jsp"%>
<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1 class="display-4" id="headline">Add a new Character</h1>
        <p class = "lead">Enter in all the required fields below to add a new playable or non-playable character!</p>
        <h3 style="color: #e43834">${message}</h3>
    </div>
</div>

<%-- Form for adding a new character.--%>
<div class="container smallFont">
    <form action="addCharacter" method="post">
        <div class="col">
            <label for="name" class="smallFontBold">Name</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <br>
        <div class="col">
            <label for="level" class="smallFontBold">Level</label>
            <select class="form-select" id="level" name="level" required>
                <option value="" selected disabled>Choose...</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
            </select>
        </div>
        <br>
        <div class="col">
            <label for="char_class" class="smallFontBold">Class</label>
            <select class="form-select" id="char_class" name="class" required>
                <option selected disabled>Choose...</option>
                <option value="Barbarian">Barbarian</option>
                <option value="Bard">Bard</option>
                <option value="Cleric">Cleric</option>
                <option value="Druid">Druid</option>
                <option value="Fighter">Fighter</option>
                <option value="Monk">Monk</option>
                <option value="Paladin">Paladin</option>
                <option value="Ranger">Ranger</option>
                <option value="Rogue">Rogue</option>
                <option value="Sorcerer">Sorcerer</option>
                <option value="Warlock">Warlock</option>
                <option value="Wizard">Wizard</option>
            </select>
        </div>
        <br>
        <div class="form-row">
            <div class="col">
                <label for="race" class="smallFontBold">Race</label>
                <select class="form-select" id="race" name="race" required>
                    <option selected disabled>Choose...</option>
                    <option value="Dragonborn">Dragonborn</option>
                    <option value="Dwarf">Dwarf</option>
                    <option value="Drow">Drow</option>
                    <option value="Elf">Elf</option>
                    <option value="Gnome">Gnome</option>
                    <option value="Half-Elf">Half-Elf</option>
                    <option value="Halfling">Halfling</option>
                    <option value="Half-Orc">Half-Orc</option>
                    <option value="Human">Human</option>
                    <option value="Tiefling">Tiefling</option>
                </select>
            </div>
            <br>
            <div class="col">
                <label for="hitPts" class="smallFontBold">Hit Points</label>
                <input type="text" class="form-control" id="hitPts" name="hitPts" aria-placeholder="45" required>
            </div>
            <br>
            <div class="col">
                <label for="armorClass" class="smallFontBold">Armor Class</label>
                <input type="text" class="form-control" id="armorClass" name="armorClass" aria-placeholder="12" required>
            </div>
        </div>
        <br>
        <div class="form-row">
            <div class="col">
                <label for="proficiency" class="smallFontBold">Proficiency</label>
                <select class="form-select" id="proficiency" name="proficiency" required>
                    <option selected disabled>Choose...</option>
                    <option value="2">+2</option>
                    <option value="3">+3</option>
                    <option value="4">+4</option>
                    <option value="5">+5</option>
                    <option value="6">+6</option>
                </select>
            </div>
            <br>
            <div class="col">
                <label for="initiative" class="smallFontBold">Initiative</label>
                <input type="text" class="form-control" id="initiative" name="initiative" aria-placeholder="2" required>
            </div>
            <br>
            <div class="col">
                <label for="speed" class="smallFontBold">Speed</label>
                <input type="text" class="form-control" id="speed" name="speed" aria-placeholder="30" required>
            </div>
        </div>
        <br>
        <div class="form-group">
            <label for="strength" class="form-label smallFontBold">Strength</label>
            <input type="range" class="form-range" min="1" max="20" id="strength" name="strength" oninput="this.nextElementSibling.value = this.value" required>
            <output class="sliderNumbers">11</output>
            <br>
            <br>
            <label for="dexterity" class="form-label smallFontBold">Dexterity</label>
            <input type="range" class="form-range" min="1" max="20" id="dexterity" name="dexterity" oninput="this.nextElementSibling.value = this.value" required>
            <output class="sliderNumbers">11</output>
            <br>
            <br>
            <label for="constitution" class="form-label smallFontBold">Constitution</label>
            <input type="range" class="form-range" min="1" max="20" id="constitution" name="constitution" oninput="this.nextElementSibling.value = this.value" required>
            <output class="sliderNumbers">11</output>
            <br>
            <br>
            <label for="intelligence" class="form-label smallFontBold">Intelligence</label>
            <input type="range" class="form-range" min="1" max="20" id="intelligence" name="intelligence" oninput="this.nextElementSibling.value = this.value" required>
            <output class="sliderNumbers">11</output>
            <br>
            <br>
            <label for="wisdom" class="form-label smallFontBold">Wisdom</label>
            <input type="range" class="form-range" min="1" max="20" id="wisdom" name="wisdom" oninput="this.nextElementSibling.value = this.value" required>
            <output class="sliderNumbers">11</output>
            <br>
            <br>
            <label for="charisma" class="form-label smallFontBold">Charisma</label>
            <input type="range" class="form-range" min="1" max="20" id="charisma" name="charisma" oninput="this.nextElementSibling.value = this.value" required>
            <output class="sliderNumbers">11</output>
            <br>
            <br>
        </div>
        <div class="mb-3">
            <label for="background" class="form-label smallFontBold">Background</label>
            <textarea class="form-control" id="background" name="background" rows="3" required></textarea>
        </div>
        <div class="col-auto">
            <p>
                <button class="btn btn-secondary btn-sm" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                    Click for Non-playable Character
                </button>
            </p>
            <div class="collapse" id="collapseExample">
                <label for="type" class="smallFontBold">Type</label>
                <div>
                    <select class="form-select" id="type" name="type">
                        <option selected disabled>Choose...</option>
                        <option value="CombatNPC">Combat NPC</option>
                        <option value="NonCombatNPC">Non-Combat NPC</option>
                    </select>
                </div>
                <br>
                <div class="col">
                    <label for="location" class="smallFontBold">Location</label>
                    <input type="text" class="form-control" id="location" name="location">
                </div>
                <br>
                <div class="mb-3">
                    <label for="traits" class="form-label smallFontBold">Traits</label>
                    <textarea class="form-control" id="traits" name="traits" rows="3"></textarea>
                </div>
            </div>
        </div>
        <br>
        <button type="submit" class="btn btn-dark">Create Character</button>
    </form>
</div>


<%@include file="includes/footer.jsp"%>
</body>
</html>
