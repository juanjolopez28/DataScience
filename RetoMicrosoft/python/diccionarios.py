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
