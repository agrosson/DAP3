// Playground to test features for P3 DA IOS A GROSSON

// Pattern for markup


/*:
 - - -
 # Grand titre
 Texte d'introduction format normal
 ## Sous titre
 
 `Titre du bullet point qui va suivre avec font spécifique`
 - Le texte ici constitue un bullet point.
 
 `Titre du bullet point qui va suivre`
 - Le texte ici constitue un bullet point.
 
 `Titre du bullet point qui va suivre`
 - Le texte ici constitue un bullet point.
 
 ## Sous Titre  2
 `canvas.moveBusForward()`
 
 `Titre du bullet point qui va suivre`
 - Le texte ici constitue un bullet point.
 
 `Titre du bullet point qui va suivre`
 - Le texte ici constitue un bullet point.
 
 ## Sous Titre  3 - message de fin
 
 - - -
 */

// Dans le code, commentaires regroupés par thème

//======================
// MARK: - VARIABLE
//======================


//======================
// TODO: - TO DO
//======================

//======================
// FIXME: - TO FIX THE BUG
//======================


class Person {
    var name: String
    var life = 0
    var weapon: Weapon
    var character: Charact
    
    init(name: String, character: Charact){
        self.name = name
        self.character = character
        switch character {
        case .warrior:
            self.weapon = .sword
            self.life = 100
        case .wizard:
            self.weapon = .potion
            self.life = 80
        case .giant:
            self.weapon = .hand
            self.life = 200
        case .dwarf:
            self.weapon = .axe
            self.life = 70
        case .elf:
            self.weapon = .arrow
            self.life = 60
        case .witch:
            self.weapon = .filter
            self.life = 75
        case .soldier:
            self.weapon = .knife
            self.life = 90
        case .knight:
            self.weapon = .lance
            self.life = 50
        default:
            print("Erreur d'initialisation de Person")
        }
    }
  
    func description() {
        print("My name is \(name), and i am a \(character)" + "\n  1. My weapon: \(weapon)" + "\n  2. My life level: \(life)")
    }
    

}
enum Weapon {
    case sword, potion, hand, axe, arrow, filter, knife, lance
}
enum Charact {
    case warrior, wizard, giant, dwarf, elf, witch, soldier, knight
}

print("essai")

var monPemierPersonnage = Person(name: "Druidela", character: .wizard)


monPemierPersonnage.name
monPemierPersonnage.description()
monPemierPersonnage.life -= 15

monPemierPersonnage.description()





