
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
generate_report(80,70,75)



def arrival_time(hours=51):
    now = datetime.now()
    arrival = now + timedelta(hours=hours)
    return arrival.strftime("Arrival: %A %H:%M")


arrival_time()