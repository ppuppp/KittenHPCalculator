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
    @State var toggledButton1 = false
    @State var toggledButton2 = false
    @State var toggledButton3 = false
    @State var toggledButton4 = false
    
    
    
    var body: some View {
        
        
        VStack{
            
            ZStack{
            
                
                
                
                VStack{
            
           
                    TextField("Your cat's name:", text: $kittenName)
                        .frame(width: 200, height: 50, alignment:.center)
                        .background(Color.clear)
                        .font(.headline).textCase(.lowercase)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    
            
            
           
          
                
            }.frame(width: 350, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                Rectangle().frame(width: 250, height: 1, alignment:.center)
                    .foregroundColor(.gray)
                    .padding(.top, 30)
                
            }
            
            Spacer().frame(maxHeight: 10)
         
            
            

            Text("Choose a Kitten Class:").foregroundColor(.black).font(.headline)
            
            
            ZStack{
            
                
                HStack{
                    
                    
                    
                    
                
                        
                        
                    VStack{
                     
                      
                        
                        Rectangle().frame(maxWidth: 300, maxHeight: 50)
                            .foregroundColor(toggledButton1 ? Color.selectedOrange : Color.strongerOrange)
                            .cornerRadius(15)
                        Rectangle().frame(maxWidth: 300, maxHeight: 50)
                            .foregroundColor(toggledButton2 ? Color.selectedOrange : Color.strongerOrange)
                            
                            .cornerRadius(15)
                        Rectangle().frame(maxWidth: 300, maxHeight: 50)
                            .foregroundColor(toggledButton3 ? Color.selectedOrange : Color.strongerOrange)
                            .cornerRadius(15)
                        Rectangle().frame(maxWidth: 300, maxHeight: 50)
                            .foregroundColor(toggledButton4 ? Color.selectedOrange : Color.strongerOrange)
                            .cornerRadius(15)
                        
                        
                    }
                    
                    
                }.shadow(color: Color.black.opacity(0.2), radius: 15.0)
                
            
                HStack{
                    
                    
           
                    
              
                    
                    VStack{
                        
                     
                        Button("⚛︎ Mage ⚛︎"){
                            
                            self.toggledButton1.toggle()
                            
                        
                            }
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(minWidth:300, minHeight: 50)
                    
                        
                            Spacer().frame(maxHeight:20)
                        
                        Button("♰ Cleric ♰"){
                            self.toggledButton2.toggle()
                            }
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(minWidth:300, minHeight: 50)
                   
                        
                            Spacer().frame(maxHeight:20)
                       
                       
                        Button("⚔︎ Paladin ⚔︎"){
                            
                            self.toggledButton3.toggle()
                            
                            }
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(minWidth:300, minHeight: 50)
                        .padding(.leading, 10)
                        
                        Spacer().frame(maxHeight:20)
                     
                        Button("⚒︎ Tanker ⚒︎"){
                           
                            self.toggledButton4.toggle()
                        
                        }
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(minWidth:300, minHeight: 50)
                        .padding(.leading, 10)
                        
                        
    }
                    
                    
                    
                    
                    
                    
                   
                    
                }.frame(maxWidth:400, maxHeight: 200)
                
               
                
            }.frame(maxHeight: 270)
            
            
            VStack{
                
                
                
                Spacer().frame(maxHeight: 30)
               
                Text("The age of your cat: \(number)").font(.headline)
                Picker("", selection: $number) {
                    
                    ForEach(1...20, id:\.self) {
                        
                        Text("\($0)").font(.headline)
                        
                    }.foregroundColor(.strongerOrange)
                    
                
                    
                    
                }
                    
                Spacer().frame(maxHeight:70)
              
                
            }
            
            ZStack{
                
                Rectangle().frame(maxWidth:350, maxHeight: 50)
                    .foregroundColor(.mainOrange)
                    .cornerRadius(15)
                
                
                VStack{
                    
                    
                    
                    NavigationLink(destination: generalBehaviourView()){
                        
                        Text("Next").padding(.bottom, 4)
                        
                }
                    .background(Color.mainOrange)
                    .foregroundColor(.white)
                    .font(.title2)
                    .frame(minWidth:350, minHeight: 50)
                    
                    
                    
                }
                    
                    
                    
                    
                }
                
            
           
            
            
        }.padding(.top, 40).frame(maxWidth: 380)
        
        
        
        
        
    }
}

struct CatzView_Previews: PreviewProvider {
    static var previews: some View {
        CatzView()
    }
}
