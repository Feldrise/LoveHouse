import ../room
import ../utils 
import os

type LivingRoom* = ref object of Room
    
method name*(this: LivingRoom): string =
    "le salon"

method descrition*(this: LivingRoom): string =
    "Vous etes dans le salon. Cette grande piece est tres lumineuse de jour. Assez sobre, il y a le canape, la tele, quelques jeux pour les chats ainsi qu'un coussins. Vous avez aussi une grande table et vue sur la cuisine ouverte."

method stayInSofa(this: LivingRoom): void = 
    echo "Que voulez vous faire dans le canape ?"
    var choice = chooseAction(@["Dormir !", "Regarder la tele"])
    echo ""

    if choice == 0:
        echo "Vous vous endormez..."
        echo ""
        sleep(3 * 1000)
        echo "*Quelques minutes plus tard*"
        echo "Vous vous reveillez !"
    else:
        echo "Vous allumez la télé"
        echo ""
        sleep(3 * 1000)
        echo "*Quelques minutes plus tard*"
        echo "Le programme est fini"

    echo ""

method interract*(this: LivingRoom): void = 
    echo "Que voulez vous faire ?"
    var choice = chooseAction(@["S'installer dans le canape", "Continuer"])
    echo ""
    
    if choice == 0: 
        this.stayInSofa()
    else:
        echo ""