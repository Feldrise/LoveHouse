import ../room

type EntryRoom* = ref object of Room
    
method name*(this: EntryRoom): string =
    "l'entree"

method descrition*(this: EntryRoom): string =
    "Ceci est l'entre. S'il vous plait, veuillez retirer vos chaussure avant de continuer."

