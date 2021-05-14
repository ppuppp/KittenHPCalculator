//
//  generalBehaviourView.swift
//  KittyHPCalculator
//
//  Created by Gabriel Puppi on 12/05/21.
//

import SwiftUI

public protocol ToggleStyle {
    associatedtype Body : View

    func makeBody(configuration: Self.Configuration) -> Self.Body

    typealias Configuration = ToggleStyleConfiguration
}

struct generalBehaviourView: View {
    
    @State var classList = [ "⚛︎ Mage ⚛︎", "♰ Cleric ♰", "⚔︎ Paladin ⚔︎", "⚒︎ Tanker ⚒︎"]
   
    
    @State var feedingBehaviours = [GeneralBehaviour(label: "Eats normal cat food", status: false, weight: 1),
                                 GeneralBehaviour(label: "Hunts insects", status: false, weight: 2),
                                 GeneralBehaviour(label: "Hunts birds", status: false, weight: 2),
                                 GeneralBehaviour(label: "Scavenging for food", status: false, weight: 1)]
    
    @State var vocalizationBehaviours = [GeneralBehaviour(label: "Meow to ask food", status: false, weight: 1),
                                         GeneralBehaviour(label: "Meow when hunting", status: false, weight: 2),
                                         GeneralBehaviour(label: "Meow when sleeping", status: false, weight: 2),
                                         GeneralBehaviour(label: "Funny or weird vocalizations", status: false, weight: 1)]
    
    func calculateGeneralScore() -> Int {
        
        let feedingScore = feedingBehaviours.filter({$0.status}).map({ 1 * $0.weight }).reduce(0, +)
        
        let vocalizationScore = vocalizationBehaviours.filter({$0.status}).map({ 1 * $0.weight }).reduce(0, +)
        
        let generalScore = feedingScore + vocalizationScore
        
        return generalScore
        
        
    }
    
    var body: some View {
  
        VStack {
           
            
            Text("Toggle the behaviours your cat does:").font(.title3).bold()
            
           
//
            
            List {
                Section(header:
                    HStack {
                        Text("Feeding")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxHeight: 30)

                        Spacer()
                        
                       
                     }.background(Color.mainOrange)
                     .listRowInsets(EdgeInsets(
                        top: 0,
                        leading: 0,
                        bottom: 0,
                        trailing: 0))
                    ){
                    ForEach(feedingBehaviours.indices){index in
                        
                        Toggle(self.feedingBehaviours[index].label, isOn: self.$feedingBehaviours[index].status)
                            .font(.body)
                            .toggleStyle(SwitchToggleStyle(tint: Color.strongerOrange))
                            
                         
                        
                        
                    }
                        
                }
            }
        
            
            List {
                Section(header:
                    HStack {
                        Text("Vocalizations")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxHeight: 30)

                        Spacer()
                        
                       
                     }.background(Color.mainOrange)
                     .listRowInsets(EdgeInsets(
                        top: 0,
                        leading: 0,
                        bottom: 0,
                        trailing: 0))
                    ){
                    ForEach(vocalizationBehaviours.indices){index in
                        
                        Toggle(self.vocalizationBehaviours[index].label, isOn: self.$vocalizationBehaviours[index].status)
                            .font(.body)
                            .toggleStyle(SwitchToggleStyle(tint: Color.strongerOrange))
                       
                        
                    }
                        
                }
            }
            
            
            VStack{
            
                NavigationLink(destination: generalBehaviourView()){
                    
                    ZStack{
                        
                        Rectangle().foregroundColor(.mainOrange).cornerRadius(15)
                        Text("Meow").foregroundColor(.white).font(.title2)
                        
                    }.frame(maxHeight: 50)
                    
                }
               
        
                
            }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
        }.padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        
        
    
        
    
    
    
    
    
    }
}



struct generalBehaviourView_Previews: PreviewProvider {
    static var previews: some View {
        generalBehaviourView()
    }
}


//class GeneralBehaviour: Identifiable {
//    
//    let label: String
//    var status: Bool
//    let id = UUID()
//    let weight: Int
//    
//    internal init(label: String, status: Bool, weight: Int) {
//        self.label = label
//        self.status = status
//        self.weight = weight
//    }
//    
//}
