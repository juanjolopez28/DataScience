multiline = """Facts about the Moon:
There is no atmosphere.
There is no sound."""

print(multiline)

heading = "temperatures and facts about the moon"
print(heading.title())
a=heading.split('a')# por defecto es por espacios pero puedes colocarle el caracter
print(a)


a="Moon" in "This text will describe facts and challenges with space travel"
print(a)

temperatures = """Saturn has a daytime temperature of -170 degrees Celsius,
... while Mars has -28 Celsius."""
print(temperatures.find("Moon")) # devuelve -1 si no lo encuentra
print(temperatures.count("Mars"))
temperatures.lower()
temperatures.upper()

mars_temperature = "The highest temperature on Mars is about 30 C"
for item in mars_temperature.split():
    if item.isnumeric():# no los negativos
        print(item)

#Ejercicios


text="""Interesting facts about the Moon. The Moon is Earth's only satellite. There are several interesting facts about the Moon and how it affects life here on Earth. 
On average, the Moon moves 4cm away from the Earth every year. This yearly drift is not significant enough to cause immediate effects on Earth. The highest daylight temperature of the Moon is 127 C."""
sentences=text.split('. ')
print(sentences)
for sentence in sentences:
    if 'temperature' in sentence.lower():
        print(sentence)
