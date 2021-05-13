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
    
    @State private var feedingList1 = false
    @State private var feedingList2 = false
    @State private var feedingList3 = false
    @State private var feedingList4 = false
    @State private var vocalList1 = false
    @State private var vocalList2 = false
    @State private var vocalList3 = false
    @State private var vocalList4 = false
    
    
    @State var classList = [ "⚛︎ Mage ⚛︎", "♰ Cleric ♰", "⚔︎ Paladin ⚔︎", "⚒︎ Tanker ⚒︎"]
    @State var feedingList = [ "⚛︎ Mage ⚛︎", "♰ Cleric ♰", "⚔︎ Paladin ⚔︎", "⚒︎ Tanker ⚒︎"]
    
    @State var feedingBehaviours = [GeneralBehaviour(label: "Eats normal cat food", status: false, weight: 1),
                             GeneralBehaviour(label: "Hunts insects", status: false, weight: 2),
                             GeneralBehaviour(label: "Hunts birds", status: false, weight: 2),
                             GeneralBehaviour(label: "Scavenging for food", status: false, weight: 1)]
    
    @State var vocalizationBehaviours = [GeneralBehaviour(label: "Meow to ask food", status: false, weight: 1),
                                         GeneralBehaviour(label: "Meow when hunting", status: false, weight: 2),
                                         GeneralBehaviour(label: "Meow when sleeping", status: false, weight: 2),
                                         GeneralBehaviour(label: "Funny or weird vocalizations", status: false, weight: 1)]
    
    
    
    func calculateGeneralScore() {
        
        let feedingScore = feedingBehaviours.filter({$0.status}).map({ 1 * $0.weight }).reduce(0, +)
        
        let vocalizationScore = vocalizationBehaviours.filter({$0.status}).map({ 1 * $0.weight }).reduce(0, +)
        
        print(feedingScore + vocalizationScore)
        
        
    }
    
    var body: some View {
       
        
        
        VStack {
            Spacer().frame(maxHeight:30)
            
            Text("Toggle the behaviours your cat does:").font(.title3).bold()
            
            Spacer().frame(maxHeight:30)
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
                            .frame(minHeight: 50)
                        
                    }
                        
                }
            }.frame(maxWidth: 400, maxHeight: 280)
            
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
                            .frame(minHeight: 50)
                        
                    }
                        
                }
            }.frame(maxWidth: 400, maxHeight: 280)
            
            
            
            
            ZStack {
               
                
                Rectangle().frame(maxWidth:350, maxHeight: 50)
                    .foregroundColor(.mainOrange)
                    .cornerRadius(15)
                
//                NavigationLink(destination: LoadingView()){
//
//                    Text("Next").padding(.bottom, 4)
//
//            }
//                .background(Color.mainOrange)
//                .foregroundColor(.white)
//                .font(.title2)
//                .frame(minWidth:350, minHeight: 50)
                
                Button(action: {
                        
                    calculateGeneralScore()
                    
                    
                }, label: {
                    Text("Calculate").foregroundColor(.white).frame(minWidth:300, minHeight: 50)
                })
                
                
                
            }
        
        }.frame(maxWidth: 500)
        
        
    
    
    
    
    
    
    
    }
}



struct generalBehaviourView_Previews: PreviewProvider {
    static var previews: some View {
        generalBehaviourView()
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
