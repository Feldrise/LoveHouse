import ../room

type LivingRoom* = ref object of Room
    
method name*(this: LivingRoom): string =
    "le salon"

method descrition*(this: LivingRoom): string =
    "Ceci est le salon. Installez vous confortablement sur le canape, le chat ne devrait pas tarder."

