import ../room

type Kitchen* = ref object of Room
    
method name*(this: Kitchen): string =
    "la cuisine"

method descrition*(this: Kitchen): string =
    "Ceci est la cuisine avec tout pour preparer de bons petits plats."

