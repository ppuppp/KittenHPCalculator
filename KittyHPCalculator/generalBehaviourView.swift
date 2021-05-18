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
    
    
   
    
    @State var feedingBehaviours = [GeneralBehaviour(label: "Eats normal cat food", status: false, weight: 1),
                                 GeneralBehaviour(label: "Hunts insects", status: false, weight: 2),
                                 GeneralBehaviour(label: "Scavenging for food", status: false, weight: 1)]
    
    @State var vocalizationBehaviours = [GeneralBehaviour(label: "Meow to ask food", status: false, weight: 1),
                                         GeneralBehaviour(label: "Meow when hunting", status: false, weight: 1),
                                         GeneralBehaviour(label: "Funny or weird vocalizations", status: false, weight: 2)]
    
    @State var activitiesBehaviours = [GeneralBehaviour(label: "Jumping to high places", status: false, weight: 2),
                                         GeneralBehaviour(label: "Scratching stuff", status: false, weight: 1),
                                         GeneralBehaviour(label: "Scaring the shit out of you", status: false, weight: 2)]
  
    
    
    let userScore:Int
    let catName: String
    let catClass: String
    
    @State var topics = [""]
    
    var body: some View {
  
        VStack {
           
            Spacer()
            Spacer()
            
            Text("Toggle the behaviours your cat does:").font(Font.custom("Rubik-Medium", size:20))
            
           
                
                
                VStack{
                
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
                                .font(Font.custom("Rubik-Regular", size:18))
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
                                .padding(.leading, 20)
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
                                .font(Font.custom("Rubik-Regular", size:18))
                                .toggleStyle(SwitchToggleStyle(tint: Color.strongerOrange))
                           
                            
                        }
                            
                    
                    }
                    
                }
                
                
                    
                    
                List {
                Section(header:
                        HStack {
                            Text("Activities")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(.leading, 20)
                                .frame(maxHeight: 30)

                            Spacer()
                            
                           
                         }.background(Color.mainOrange)
                         .listRowInsets(EdgeInsets(
                            top: 0,
                            leading: 0,
                            bottom: 0,
                            trailing: 0))
                        ){
                        ForEach(activitiesBehaviours.indices){index in
                            
                            Toggle(self.activitiesBehaviours[index].label, isOn: self.$activitiesBehaviours[index].status)
                                .font(Font.custom("Rubik-Regular", size:18))
                                .toggleStyle(SwitchToggleStyle(tint: Color.strongerOrange))
                           
                            
                        }
                            
                    
                }
                
                }
                    
            }.padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).navigationBarTitle("", displayMode: .inline)

            VStack{
            
                NavigationLink(destination: ResultView(userScore: userScore, generalScore: calculateGeneralScore(), catName: catName, catClass: catClass)){
                    
                    ZStack{
                        
                        Rectangle().foregroundColor(.mainOrange).cornerRadius(15)
                        Text("Calculate").foregroundColor(.white).font(Font.custom("Rubik-Regular", size:20))
                        
                    }.frame(maxHeight: 50)
                    
                }
               
        
                
            }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
                
            }
//
            
            
    }
}


func calculateGeneralScore() -> Int {
    
    let feedingScore = feedingBehaviours.filter({$0.status}).map({ 1 * $0.weight }).reduce(0, +)
    
    let vocalizationScore = vocalizationBehaviours.filter({$0.status}).map({ 1 * $0.weight }).reduce(0, +)
    
    let generalScore = feedingScore + vocalizationScore
    
    return generalScore
    
    
}


struct generalBehaviourView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            generalBehaviourView(userScore: 5, catName: "Jorge", catClass: "maguinho")
                .preferredColorScheme(.light)
            generalBehaviourView(userScore: 7, catName: "Jorge", catClass: "maguinho")
        }
    }
}


