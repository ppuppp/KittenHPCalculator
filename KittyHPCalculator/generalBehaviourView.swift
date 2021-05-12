//
//  generalBehaviourView.swift
//  KittyHPCalculator
//
//  Created by Gabriel Puppi on 12/05/21.
//

import SwiftUI


struct generalBehaviourView: View {
    
    @State private var feedingList1 = false
    @State private var feedingList2 = false
    @State private var feedingList3 = false
    @State private var feedingList4 = false
    @State private var vocalList1 = false
    @State private var vocalList2 = false
    @State private var vocalList3 = false
    @State private var vocalList4 = false

    
    var body: some View {
       
        
        
        
        
        
        
        VStack {
            Spacer().frame(maxHeight:30)
            
            Text("Toggle the behaviours your cat does:").font(.title3).bold()
            
            Spacer().frame(maxHeight:30)
            List{
                Section(header: HStack {
                    Text("Feeding")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxHeight: 30)

                        Spacer()
                }
                .background(Color.mainOrange)
                .listRowInsets(EdgeInsets(
                    top: 0,
                    leading: 0,
                    bottom: 0,
                    trailing: 0))
                ) {
                Toggle("Eats normal cat food", isOn: $feedingList1).font(.body).toggleStyle(SwitchToggleStyle(tint: Color.strongerOrange)).frame(minHeight: 50)
           
            
                Toggle("Hunts insects", isOn: $feedingList2).font(.body).toggleStyle(SwitchToggleStyle(tint: Color.strongerOrange)).frame(minHeight: 50)
            
         
            
                Toggle("Hunts birds", isOn: $feedingList3).font(.body).toggleStyle(SwitchToggleStyle(tint: Color.strongerOrange)).frame(minHeight: 50)
           
                Toggle("Scavenging for food", isOn: $feedingList4).font(.body).toggleStyle(SwitchToggleStyle(tint: Color.strongerOrange)).frame(minHeight: 50)
           
                }
            }.frame(maxWidth: 400, maxHeight: 280)
            
            
            List{
                Section(header: HStack {
                    Text("Vocalizations")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxHeight: 30)

                        Spacer()
                }
                .background(Color.mainOrange)
                .listRowInsets(EdgeInsets(
                    top: 0,
                    leading: 0,
                    bottom: 0,
                    trailing: 0))
                ) {
                Toggle("Meow to ask for food", isOn: $vocalList1).font(.body).toggleStyle(SwitchToggleStyle(tint: Color.strongerOrange)).frame(minHeight: 50)
           
            
                Toggle("Meow when hunting", isOn: $vocalList2).font(.body).toggleStyle(SwitchToggleStyle(tint: Color.strongerOrange)).frame(minHeight: 50)
                    
                Toggle("Meow when sleeping", isOn: $vocalList3).font(.body).toggleStyle(SwitchToggleStyle(tint: Color.strongerOrange)).frame(minHeight: 50)
                    
                Toggle("Funny or weird vocalizations", isOn: $vocalList4).font(.body).toggleStyle(SwitchToggleStyle(tint: Color.strongerOrange)).frame(minHeight: 50)
                    
                    }
                
                
            }.frame(maxWidth: 400)
            
            ZStack {
               
                
                Rectangle().frame(maxWidth:350, maxHeight: 50)
                    .foregroundColor(.mainOrange)
                    .cornerRadius(15)
                
                NavigationLink(destination: LoadingView()){
                    
                    Text("Next").padding(.bottom, 4)
                    
            }
                .background(Color.mainOrange)
                .foregroundColor(.white)
                .font(.title2)
                .frame(minWidth:350, minHeight: 50)
                
                
            }
        
        }.frame(maxWidth: 500)
        
        
    
    
    
    
    
    
    
    }
}

struct generalBehaviourView_Previews: PreviewProvider {
    static var previews: some View {
        generalBehaviourView()
    }
}
