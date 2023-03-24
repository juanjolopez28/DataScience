
from datetime import timedelta, datetime
def rocket_parts():
    print("payload, propellant, structure")

#cuando una funcion no retorna nada por defecto retorna none
output = rocket_parts()
print(output)

def generate_report (main_tank,external_tank,hydrogen_tank):
    output = f"""Fuel Report:
    Main tank: {main_tank}
    External tank: {external_tank}
    Hydrogen tank: {hydrogen_tank} 
    """
    print(output)




def arrival_time(hours=51):
    now = datetime.now()
    arrival = now + timedelta(hours=hours)
    return arrival.strftime("Arrival: %A %H:%M")

def variable_length(*args):
    print(args)


def sequence_time(*args):
    total_minutes = sum(args)
    if total_minutes < 60:
        return f"Total time to launch is {total_minutes} minutes"
    else:
        return f"Total time to launch is {total_minutes/60} hours"
#Argumentos de variable
def sequence_time1(*args):
    return args

#Argumentos de palabra clave variable
#se asgina como un diccionario
def variable_length(**kwargs):
    print(kwargs)



def crew_members(**kwargs):
    print(f"{len(kwargs)} astronauts assigned for this mission:")
    for title, name in kwargs.items():
        print(f"{title}: {name}")
#no se puede usar palabras clave repetidas
#crew_members(captain="Neil Armstrong", pilot="Buzz Aldrin", command_pilot="Michael Collins")


#Ejercicios

def fuel_report (**fuel_tanks):
    for key,name in fuel_tanks.items():
        print(f'{key} y su valor {name}')

fuel_report(main=50, external=100, emergency=60)