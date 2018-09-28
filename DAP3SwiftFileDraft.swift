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



//======================
// MARK: - CLASSES
//======================
class Person {
    var name: String
    var life = 0
    var weapon: Weapon
    var characterType: CharacterType
    var animal = [Animal]()
    
    init(name: String, characterType: CharacterType){
        self.name = name
        self.characterType = characterType
        switch characterType {
        case .warrior:
            self.weapon = .sword
            self.life = 100
        case .wizard:
            self.weapon = .potion
            self.life = 80
        case .giant:
            self.weapon = .none
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
        }
    }
    
    func description() -> String {
        return "My name is \(name), and i am a \(characterType)" + "\n  1. My weapon: \(weapon)" + "\n  2. My life level: \(life)" + "\n  3. I have got \(animal.count) " + (animal.count > 1 ? "animals" : "animal")
        
    }
}

class Team {
    var teamName: String
    var teamMembers = [Person]()
    var teamLife: Int?
    
    
    init(name : String){
        teamName = name
    }
    
    func chooseMember(){
        // create a Person
        let unMember = createPerson()
        // add to the teamMembers
        teamMembers.append(unMember)
    }
    
    func presentation() -> String {
        var presentationText = "My team \(teamName) has \(teamMembers.count) " + (teamMembers.count > 1 ? "members" : "member") + " and " + (teamMembers.count > 1 ? "they" : "he") + " will present " + (teamMembers.count > 1 ? "themselves !" : "himself !")
        for person in teamMembers {
            presentationText = presentationText + "\n \(person.description())"
            
        }
        return presentationText
    }
    
    
}

class Game {
    var gameOver = false
    var currentTeam: Team?
    var currentTeamMember: Person?
    
}

//======================
// MARK: - enum
//======================
enum Weapon {
    case sword, potion, none, axe, arrow, filter, knife, lance
}
enum CharacterType {
    case warrior, wizard, giant, dwarf, elf, witch, soldier, knight
}

enum Animal {
    case wolf,snake,monkey
}

enum Event {
    
}
//======================
// MARK: - func
//======================
//======================
// TODO: - CHECK THAT NAME IS UNIQUE
//======================
func createPerson() -> Person {
    print("What is the name of your new member?")
    var nameMember = ""
    if let name = readLine(){
        nameMember = name
    }
    print("What kind of character is it?"
        + "\n1. A warrior"
        + "\n2. A wizard"
        + "\n3. A giant"
        + "\n4. A dwarf"
        + "\n5. An elf"
        + "\n6. A witch"
        + "\n7. A soldier"
        + "\n8. A knight"
        
    )
    var typeMember: CharacterType?
    var good = false
    
    while good == false{
    if let type = readLine(){
        switch type {
        case "1": typeMember = .warrior; good = true
        case "2": typeMember = .wizard; good = true
        case "3": typeMember = .giant; good = true
        case "4": typeMember = .dwarf; good = true
        case "5": typeMember = .elf; good = true
        case "6": typeMember = .witch; good = true
        case "7": typeMember = .soldier; good = true
        case "8": typeMember = .knight; good = true
        default : print("Could your repeat your choice, I haven't understood !!")
        }
    
        //print("\u{001B}[2J")
       
    }
  
    }
    return Person(name: nameMember, characterType: typeMember!)
}

func createTeam() -> Team {
    print("What is the name of your Team?")
    var nameTeam = ""
    if let name = readLine(){
        nameTeam = name
    }
    return Team(name: nameTeam)
}


//var monPemierPersonnage = Person(name: "Druidela", characterType: .wizard)
//
//
//print(monPemierPersonnage.name)
//print("")
//
//monPemierPersonnage.description()
//print("")
//monPemierPersonnage.life -= 15
//
//monPemierPersonnage.description()
//
//monPemierPersonnage.animal.append(.monkey)
//print("")
//
//monPemierPersonnage.description()
//monPemierPersonnage.animal.append(.monkey)
//print("")
//
//monPemierPersonnage.description()


print("Bonjour, nous allons créer une équipe et personnage et le décrire")
//var lePersonnage = createPerson()
//
//print("\(lePersonnage.description())")


var laTeam = createTeam()
laTeam.chooseMember()
print(laTeam.presentation())
laTeam.chooseMember()
print(laTeam.presentation())
laTeam.chooseMember()
print(laTeam.presentation())

