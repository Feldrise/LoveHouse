import ../room
import entry_room
import living_room
import kitchen_room

var 
    entry* = EntryRoom()
    living* = LivingRoom()
    kitchen* = Kitchen()

entry.linkedRooms.add(living)
entry.linkedRooms.add(kitchen)

living.linkedRooms.add(entry)

kitchen.linkedRooms.add(entry)