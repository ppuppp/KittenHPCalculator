//
//  Math.swift
//  KittyHPCalculator
//
//  Created by Gabriel Puppi on 14/05/21.
//

import Foundation

//
//
//

//

var feedingBehaviours = [GeneralBehaviour(label: "Eats normal cat food", status: false, weight: 1),
                         GeneralBehaviour(label: "Hunts insects", status: false, weight: 2),
                         GeneralBehaviour(label: "Hunts birds", status: false, weight: 2),
                         GeneralBehaviour(label: "Scavenging for food", status: false, weight: 1)]

var vocalizationBehaviours = [GeneralBehaviour(label: "Meow to ask food", status: false, weight: 1),
                              GeneralBehaviour(label: "Meow when hunting", status: false, weight: 2),
                              GeneralBehaviour(label: "Meow when sleeping", status: false, weight: 2),
                              GeneralBehaviour(label: "Funny or weird vocalizations", status: false, weight: 1)]





    

func calculateFinalHP(classType:ClassesType, feedingScore: GeneralBehaviour, vocalizationScores: GeneralBehaviour) -> Int {
    
    
   
    
let finalScore = classType.baseHp + feedingScore.weight + vocalizationScores.weight
    
    
    
    
    return finalScore
    
    
    
}










// catFinalHP = catAge + classBaseHP + generalBehaviourHP = classBehaviourHP











    

























class ClassesType: Identifiable {
   
    let classLabel:String
    let baseHp: Int
    let id = UUID()
    
    internal init(classLabel: String, baseHp: Int) {
        self.classLabel = classLabel
        self.baseHp = baseHp
    }
    
        }



class CatFinalResult: Identifiable {
   
    
    
    let catName: String
    let catClass:String
    let catFinalHP: Int
    
    internal init(catName: String, catClass: String, catFinalHP: Int) {
        self.catName = catName
        self.catClass = catClass
        self.catFinalHP = catFinalHP
    }
    
    
}


class GeneralBehaviour: Identifiable {
    
    let label: String
    var status: Bool
    let id = UUID()
    let weight: Int
    
    internal init(label: String, status: Bool, weight: Int) {
        self.label = label
        self.status = status
        self.weight = weight
    }
    
}
