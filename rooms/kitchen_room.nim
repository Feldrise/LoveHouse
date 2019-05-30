import ../room
import ../utils

import os
import strutils

type Kitchen* = ref object of Room
    isDirty: bool
    
method name*(this: Kitchen): string =
    "la cuisine"

method descrition*(this: Kitchen): string =
    "La cuisine est ouverte sur l'entree et le salon. D'une decoration assez sobre, la cuisine reste tres bien equipee."

method clean(this: Kitchen): void =
    echo "Vous faites la vaisselle..."
    sleep(3 * 1000)
    this.isDirty = false
    echo "La cuisine est toute propre"
    echo ""

method cook(this: Kitchen): void =
    echo "Alors on veut cuisiner ?"
    echo "Quoi de bon allez vous cuisiner ?"
    var choice = chooseAction(@["Des pates au saumons", "Des pates a la carbonara", "Du poulet frite", "Des crepes", "Des gauffres", "Des glaces"])

    echo "Vous vous mettez a cuisiner..."

    if choice == 0: # Pates au saumon
        sleep(3 * 1000)
        echo "Voilà qui sent bon ! Vos pates sont un peu trop cuite mais vous devriez vous regaler"
    if choice == 1: # Pates à la carbonara
        sleep(3 * 1000)
        echo "L'odeur est tres attirantes ! C'est une reussite. Profitez !"
    if choice == 2: # Poulet frite
        sleep(5 * 1000)
        echo "Une delicieuse odeur se repand... Vous allez vous regaler !"
    if choice == 3: # Crepes
        echo "Combien de crepes voulez vous faire ?"
        var num = readLine(stdin).parseInt;
        echo "C'est partie..."
        sleep(num * 1000)
        echo "Bravo ! Vos crepes sont très reussite."
    if choice == 4: # Gauffres
        echo "Combien de gauffres voulez vous faire ?"
        var num = readLine(stdin).parseInt;
        echo "C'est partie..."
        sleep(num * 1000)
        echo "Bravo ! Vos gauffre sont epaisses et appetisantes."
    if choice == 5: # Glaces
        sleep(8 * 1000)
        echo "Eh bien voila qui n'a pas ete facile, mais le resultat est convainquant."
        
    echo ""    
    this.isDirty = true

    echo "Voulez vous faire la vaisselle ?"
    choice = chooseAction(@["Oui", "Plus tard"])

    if choice == 0:
        this.clean()

method interract*(this: Kitchen): void = 
    var choice: int

    if this.isDirty == true:
        echo "Il semblerait qu'il y ai de la vaisselle a faire. Que voulez vous faire ?"
        choice = chooseAction(@["Faire la vaisselle", "Continuer"])
        echo ""

        if choice == 0:
            this.clean()
            this.interract()
    else:
        echo "que voulez vous faire ?"
        choice = chooseAction(@["Cuisiner", "Continuer"])

        if choice == 0: 
            this.cook()