import ../animal
import ../utils

type 
    Mood* = enum lazy, happy, angry
type Cat* = ref object of Animal
    mood*: Mood

method noise*(this: Cat): string = "Meow "
method ageInHumanYears*(this: Animal): int = 
    this.age * 7;

method pet(this: Cat): string =
    var action = "se laisse faire sans bouger"
    if this.mood == lazy:
        action = "se laisse faire sans bouger"
    if this.mood == happy:
        action = "repond joyeusement a vos carresses"
    if this.mood == angry:
        action = "rale en s'en allant"

    this.name & " " & action
    
method interract*(this: Cat): void = 
    echo "Que voulez vous faire avec " & this.name
    var choice = chooseAction(@["L'ignorer", "Le caresser"])

    if choice == 0:
        echo "Vous ignorez " & this.name
    if choice == 1:
        echo "Vous carressez " & this.name & ". " & this.pet
