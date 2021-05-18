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
    @State var currentTapped: Class?
    
    
    @State var classList = [Class(classLabel: "⚛︎ Mage ⚛︎", baseHp: 75),
                            Class(classLabel: "♰ Cleric ♰", baseHp: 75),
                            Class(classLabel: "⚔︎ Paladin ⚔︎",  baseHp: 75),
                            Class(classLabel: "⚒︎ Tanker ⚒︎",baseHp: 75)]
   
    
    
    var body: some View {

        VStack{
            
            Spacer()
            Spacer()
            
            VStack{
      
                
                
                TextField("Your cat's name:🐱", text: $kittenName)
                    .frame(width: 200, height: 10, alignment:.center)
                    .background(Color.clear)
                    .font(.headline).textCase(.lowercase)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                
                Rectangle().frame( height: 1, alignment:.center)
                    .foregroundColor(.gray).padding(.leading, 30).padding(.trailing, 30)
                
            }

            
            
            VStack{
                Spacer()
                Text("Choose a Kitten Class:").foregroundColor(.black).font(.headline)
                Spacer()
                Spacer()
                Spacer()
                ForEach(classList, id: \.id){ classType in
        
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(classType == currentTapped ? .selectedOrange : .mainOrange)
                            .cornerRadius(15)
                            .animation(.easeIn)
                        Text(classType.classLabel)
                            .foregroundColor(.white)
                            .font(.headline)
                            
                        
        
                    }.onTapGesture {
                        
                        if classType == currentTapped {
                            currentTapped = nil
                            
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
                
                
                
                NavigationLink(destination: generalBehaviourView(userScore: calculateUserScore(), catName: kittenName, catClass: currentTapped?.classLabel ?? "Classe")){
                    
                    
                    
                    ZStack{
                        
                        Rectangle().foregroundColor(.mainOrange).cornerRadius(15)
                        Text("Next").foregroundColor(.white).font(Font.custom("Rubik-Regular", size:20))
                        
                    }.frame(maxHeight: 50)
                    
                    
                }
            
                
                
                
                
                
            }
            
            
        }.padding().navigationBarTitle("", displayMode: .inline)

   
    }

    func calculateUserScore() -> Int {
        
        
        guard let classScore = currentTapped?.baseHp else {
            return 0
        }
        
        let maxAge = 20
        let ageScore = maxAge - number
        
        let userScore = classScore + ageScore
        
        return userScore
        
        }

}






    
  
    













struct CatzView_Previews: PreviewProvider {
    static var previews: some View {
        CatzView()
    }
}




