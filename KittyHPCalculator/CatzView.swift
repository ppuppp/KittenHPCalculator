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
                //for each dentro da VSTACK
                
                // ZSTack dentro do for each
                
                // ZSTack vai conter 01 retangulo  e um texto
                
                ForEach(classList, id: \.self){ classType in
                    
                    
                    
                    if classType == currentTapped {
                        
                        
                        Button(action: {
                            
                            currentTapped = nil
                            
                            
                            
                        }, label: {
                            ZStack{
                                
                                Rectangle().foregroundColor(.selectedOrange).cornerRadius(15)
                                Text(classType).foregroundColor(.white).font(.title2)
                                
                                
                                
                                
                            }
                        })
                        
                        
                    } else{
                        
                        
                        
                        
                        Button(action: {
                            
                            currentTapped = classType
                            
                            
                        }, label: {
                            ZStack{
                                
                                Rectangle().foregroundColor(.mainOrange).cornerRadius(15)
                                Text(classType).foregroundColor(.white).font(.title2)
                                
                                
                                
                                
                            }
                        })
                        
                        
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
            
            
            
            ZStack{
                
                
                Rectangle()
                    .foregroundColor(.mainOrange)
                    .cornerRadius(15)
                   
                
                VStack{
                    
                    NavigationLink(destination: generalBehaviourView()){
                        
                        Text("Next")
                        
                    }
                    .background(Color.mainOrange)
                    .foregroundColor(.white)
                    .font(.title2)
                    
                    
                    
                    
                }
                
            }.frame(maxHeight: 50)
            
            
            
            
            
        }.padding()
        
        
        
        
        
    }
}

struct CatzView_Previews: PreviewProvider {
    static var previews: some View {
        CatzView()
    }
}




