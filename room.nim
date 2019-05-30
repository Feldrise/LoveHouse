import utils
import animal

type Room* = ref object of RootObj
    animals*: seq[Animal]
    linkedRooms*: seq[Room]

method name*(this: Room): string =
    "Piece"

method descrition*(this: Room): string =
    "C'est une piece."

method interract*(this: Room): void = 
    echo "Il n'y a rien a faire dans cette piece"

method enter*(this: Room): void =
    echo "Vous etes dans ", this.name
    echo "**********"
    echo this.descrition
    echo "**********"

    if len(this.animals) > 0:
        echo "Il y a un ou plusieurs animaux dans cette piece..."
        echo ""

        for animal in this.animals:
            echo animal.noise
            animal.interract
        
        echo ""

method moveToRoom*(this: Room): int = 
    this.enter()
    this.interract()

    var roomsName: seq[string]

    for room in this.linkedRooms:
        roomsName.add(room.name)

    roomsName.add("quitter l'appartement")

    echo "Ou voulez vous aller ?"
    chooseAction(roomsName)