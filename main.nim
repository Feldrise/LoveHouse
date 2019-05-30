import utils
import animals/animals_controller

import room
import rooms/rooms_builder

var choice = 0
var currentRoom: Room = entry

while true:
    choice = currentRoom.moveToRoom()

    if choice <= len(currentRoom.linkedRooms) - 1:
        currentRoom = currentRoom.linkedRooms[choice]
    else:
        break

    echo ""
    echo ""

echo ("Tu as ete teleporter dans le monde reel. Au revoir !")