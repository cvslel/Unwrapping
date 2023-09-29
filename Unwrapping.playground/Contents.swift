import UIKit

enum MembersTeams {
    case iOSDevelopmentTeam
    case AndroidDevelopmentTeam
    case UIUXDesignTeam
    
}

struct neonAcademyMember {
    let fullName:String
    var title:String
    let horoscope:String
    let memberLevel:String
    let homeTown:String
    let age:Int
    let contactInformation: ContactInformation
    var mentorLevel:String?
    var team : MembersTeams
    var motivationLevel: Int? = nil
    
    mutating func increaseMotivation(amount: Int) {
        if let currentMotivationLevel = self.motivationLevel {
            self.motivationLevel = currentMotivationLevel + amount
        } else {
            self.motivationLevel = 1
        }
    }
    
    
}

class ContactInformation {
    var phoneNumber:Int
    var email:String
    
    init(phoneNumber: Int, email: String) {
        self.phoneNumber = phoneNumber
        self.email = email
    }
}
var memberCenker = neonAcademyMember(fullName: "Cenker Soyak", title: "iOS Developer", horoscope: "Aries", memberLevel: "A1", homeTown: "Izmir", age: 21,contactInformation: ContactInformation(phoneNumber: 05349793739, email: "cenkersyk@gmail.com"), team: .iOSDevelopmentTeam)

var memberBerk = neonAcademyMember(fullName: "Berk Ceylan", title: "iOS Developer", horoscope: "Scorpio", memberLevel: "Lead", homeTown: "Istanbul", age: 25, contactInformation: ContactInformation(phoneNumber: 05332327818, email: "berk@neonapps.com"), team: .iOSDevelopmentTeam)

var memberMelisa = neonAcademyMember(fullName: "Melisa Kilinc", title: "Graphic Designer", horoscope: "Aries", memberLevel: "A1", homeTown: "Istanbul", age: 23, contactInformation: ContactInformation(phoneNumber: 05322263112, email: "melisa@neonapps.com"), team: .UIUXDesignTeam)

var memberSelay = neonAcademyMember(fullName: "Selay Dolma", title: "Graphic Designer", horoscope: "Taurus", memberLevel: "A1", homeTown: "Istanbul", age: 24, contactInformation: ContactInformation(phoneNumber: 05382128676, email: "selay@neonapps.com"), team: .UIUXDesignTeam)

var memberOnur = neonAcademyMember(fullName: "Onur Sahin", title: "Flutter Developer", horoscope: "Libra", memberLevel: "A1", homeTown: "Manisa", age: 32, contactInformation: ContactInformation(phoneNumber: 05348786574, email: "onur@neonapps.com"), team: .AndroidDevelopmentTeam)

var memberMehmet = neonAcademyMember(fullName: "Mehmet Nuri Firat", title: "Flutter Developer", horoscope: "Gemini", memberLevel: "B1", homeTown: "Kars", age: 25, contactInformation: ContactInformation(phoneNumber: 05349798692, email: "mehmet@neonapps.com"), team: .AndroidDevelopmentTeam)


var membersOfNeonApps = [neonAcademyMember]()
membersOfNeonApps.append(memberBerk)
membersOfNeonApps.append(memberCenker)
membersOfNeonApps.append(memberMelisa)
membersOfNeonApps.append(memberSelay)
membersOfNeonApps.append(memberOnur)
membersOfNeonApps.append(memberMehmet)
print("--------------------------")

//Unwrapping
//1- Create a function that prints out a message based on the member's motivation level. For example, if the motivation level is nil, the function should print out "This member has no motivation level set" and if the motivation level is greater than 5, the function should print out "This member is highly motivated". ( You should use guard let for this task)

func getMotivationLevel(member: neonAcademyMember) -> String {
    guard let theMotivationLevel = member.motivationLevel else {
        return "This member has no motivation level set."
    }
    if theMotivationLevel > 4 {
        return "This member highly"
    } else if theMotivationLevel < 1{
        return "xx"
    } else {
        return "xxx"
    }
    
}
print(getMotivationLevel(member: memberCenker))

//2- Create a function that takes a member's motivation level as an input and returns a string indicating whether the member is highly motivated, moderately motivated, or not motivated at all.

func setMotivationLevel(setLevel: Int ) -> String{
    if setLevel >= 4 {
        return("This member highly motivated")
    } else if setLevel < 4 && setLevel > 2 {
        return("This motivation level is moderated")
    } else {
        return("This member's has not motivated at all.")
    }
}

print(setMotivationLevel(setLevel: 7))

//3- Create a function that takes a member and returns the member's motivation level if it is not nil, otherwise it returns 0. ( You should use nil coalescing for this task)

func takeNCheck(member: neonAcademyMember) -> Int {
    return member.motivationLevel ?? 0
}

print(takeNCheck(member: memberCenker))


//4- Create a function that takes a member and a target motivation level as inputs, and returns true if the member's current motivation level is greater than or equal to the target level, or false otherwise. ( You should use iv let for this task)

func takeMemberNTarget(member: neonAcademyMember, targetMotivation: Int) -> Bool {
    if member.motivationLevel ?? 0 >= targetMotivation {
        return true
    } else {
        return false
    }
}
print(takeMemberNTarget(member: memberCenker, targetMotivation: 5))
