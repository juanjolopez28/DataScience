planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
ultimo=planets.pop()  # Goodbye, Pluto
number_of_planets = len(planets)
print("No, there are definitely", number_of_planets, "planets in the solar system.")
print(ultimo)
print("The last planet is", planets[-1])
print("The penultimate planet is", planets[-2]) 
planets.append('Pluto')