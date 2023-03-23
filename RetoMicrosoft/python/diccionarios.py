planet = {
    'name': 'Earth',
    'moons': 1
}
wibble = planet.get('wibble') # Returns None
#wibble = planet['wibble'] # Throws KeyError
#actualiza la clave
planet.update({'name': 'Makemake'})


# Using update
planet.update({
    'name': 'Jupiter',
    'moons': 79
})

# Using square brackets
planet['name'] = 'Jupiter'
planet['moons'] = 79

###Adicion y eliminacion de claves
planet['orbital period'] = 4333

# planet dictionary now contains: {
#   name: 'jupiter'
#   moons: 79
#   orbital period: 4333
# }
planet.pop('orbital period')

# planet dictionary now contains: {
#   name: 'jupiter'
#   moons: 79
# }



# Add address
planet['diameter (km)'] = {
    'polar': 133709,
    'equatorial': 142984
}

# planet dictionary now contains: {
#   name: 'Jupiter'
#   moons: 79
#   diameter (km): {
#      polar: 133709
#      equatorial: 142984
#   }
# }

print(f'{planet["name"]} polar diameter: {planet["diameter (km)"]["polar"]}')


planet = {
    'name': 'Mars',
    'moons': 2
}


print(planet['name'])
print(f"{planet['name']} has {planet['moons']}")
planet['circumference']={
    'polar': 6752,
    'equatorial': 6792
}
print(f"{planet['name']} has {planet['circumference']['polar']}")

#.keys() and .values()
planet_moons={
'mercury': 0,
'venus': 0,
'earth': 1,
'mars': 2,
'jupiter': 79,
'saturn': 82,
'uranus': 27,
'neptune': 14,
'pluto': 5,
'haumea': 2,
'makemake': 1,
'eris': 1    
}

moons = list(planet_moons.values())
total_planets = len(planet_moons.keys())

print(moons)
total_moons=0
for moon in moons:
    total_moons+=moon
print(total_moons)
print(total_moons/total_planets)