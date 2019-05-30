import ../room
import ../utils

type EntryRoom* = ref object of Room
    clothPosed: bool
    
method name*(this: EntryRoom): string =
    "l'entree"

method descrition*(this: EntryRoom): string =
    "Vous vous trouvez a l'entree de la maison. Vous avez vu sur une grande cuisine et un salon aussi grand que lumineux. Je vous invite a retirer vos chaussure et poser vos vetements sur les portes-mantaux a votre droite."

method interract*(this: EntryRoom): void = 
    if this.clothPosed == false:
        var choice = chooseAction(@["Deposer ses vetements", "Garder ses chaussures"])
        echo ""
        
        if choice == 0:
            echo "Merci, vous pouvez continuer"
            this.clothPosed = true
        else:
            echo "D'accord. Mais vous risquez de vous faire gronder"
        
        echo ""
    else:
        echo "Vous avez deja deposer vos vetements"
        echo ""

