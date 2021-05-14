//
//  PetsView.swift
//  KittyHPCalculator
//
//  Created by Gabriel Puppi on 11/05/21.
//

import SwiftUI


struct CatzView: View {
    
    @State var kittenName: String = ""
    @State var number = 1
    @State var tap = false
    @State var currentTapped: String?
    @State var classList = [ "⚛︎ Mage ⚛︎", "♰ Cleric ♰", "⚔︎ Paladin ⚔︎", "⚒︎ Tanker ⚒︎",]
    
    
    var body: some View {

        VStack{
            
            VStack{
      
                TextField("Your cat's name:", text: $kittenName)
                    .frame(width: 200, height: 10, alignment:.center)
                    .background(Color.clear)
                    .font(.headline).textCase(.lowercase)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                
                Rectangle().frame( height: 1, alignment:.center)
                    .foregroundColor(.gray).padding(.leading, 30).padding(.trailing, 30)
                
            }

            VStack{
                Text("Choose a Kitten Class:").foregroundColor(.black).font(.headline)
                Spacer()
                ForEach(classList, id: \.self){ classType in
        
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(classType == currentTapped ? .selectedOrange : .mainOrange)
                            .cornerRadius(15)
                            .animation(.default)
                        Text(classType)
                            .foregroundColor(.white)
                            .font(.title2)
                        
        
                    }.onTapGesture {
                        
                        if classType == currentTapped {                            currentTapped = nil
                            
                        } else {
                            
                            currentTapped = classType
                        }
                        
                    }

                }
      
            }.padding().padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

            VStack{

                Text("The age of your cat:").font(.headline)
                Picker("", selection: $number) {
                    
                    ForEach(1...20, id:\.self) {
                        
                        Text("\($0)").font(.headline)
                        
                    }.foregroundColor(.strongerOrange)
  
                }
    
            }
            
            VStack{
                
                
                
                NavigationLink(destination: generalBehaviourView()){
                    
                    
                    
                    ZStack{
                        
                        Rectangle().foregroundColor(.mainOrange).cornerRadius(15)
                        Text("Meow").foregroundColor(.white).font(.title2)
                        
                    }.frame(maxHeight: 50)
                    
                    
                }
            
                
                
                
                
                
            }
            
            
        }.padding()

    }
}

struct CatzView_Previews: PreviewProvider {
    static var previews: some View {
        CatzView()
    }
}




