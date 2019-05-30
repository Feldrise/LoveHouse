# Module animal
type Animal* = ref object of RootObj
    name*: string 
    age*: int

method noise*(this: Animal): string = 
    "..."
method ageInHumanYears*(this: Animal): int = 
    this.age;

method interract*(this: Animal): void = 
    echo "Vous regardez ", this.name