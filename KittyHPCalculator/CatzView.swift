//
//  PetsView.swift
//  KittyHPCalculator
//
//  Created by Gabriel Puppi on 11/05/21.
//

import SwiftUI



struct CatzView: View {
    
    @State var kittenName: String = ""
    
    
    var body: some View {
        
        
        VStack{
            
            
            Spacer().frame(maxHeight:40)
            TextField("Your kitten name:", text: $kittenName).padding(.leading, 40).background(Color.clear)
            Spacer().frame(maxHeight: 60)
            Text("Choose a Kitten Class:").foregroundColor(.white).background(Color.black).font(.headline)
            
           
            Spacer().frame(maxHeight:5)
         
            
            
            ZStack{
                
                HStack{
                    
                    
                   
                    
                    
                    
                    VStack{
                     
                        
                        
                        Rectangle().frame(maxWidth: 300, maxHeight: 50)
                            .foregroundColor(.purple)
                            .cornerRadius(10)
                        Rectangle().frame(maxWidth: 300, maxHeight: 50)
                            .foregroundColor(.purple)
                            .cornerRadius(10)
                        Rectangle().frame(maxWidth: 300, maxHeight: 50)
                            .foregroundColor(.purple)
                            .cornerRadius(10)
                        Rectangle().frame(maxWidth: 300, maxHeight: 50)
                            .foregroundColor(.purple)
                            .cornerRadius(10)
                        
                        
                    }
                    
                    
                }.shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).frame(maxHeight:300)
                
            
                HStack{
                    
                    
           
                    
              
                    
                    VStack{
                        
                     
                        Button("Mage 🔮"){
                        }.background(Color.purple)
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(minWidth:300, minHeight: 50)
                        .padding(.leading, 35)
                        
                            Spacer().frame(maxHeight:15)
                        
                        Button("Cleric ✝️"){
                            }.background(Color.purple)
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(minWidth:300, minHeight: 50)
                        .padding(.leading, 35)
                        
                            Spacer().frame(maxHeight:15)
                       
                       
                        Button("Paladin🛡"){
                            }.background(Color.purple)
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(minWidth:300, minHeight: 50)
                        .padding(.leading, 35)
                        
                        Spacer().frame(maxHeight:15)
                     
                        Button("Tanker 🦾 "){
                            }.background(Color.purple)
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(minWidth:300, minHeight: 50)
                        .padding(.leading, 35)
                        
                        
    }
                    
                    
                    
                    
                    
                    
                   
                    
                }.frame(maxWidth:400, maxHeight: 200)
                
               
                
            }
            
            
            
         
            
            Spacer()
            Spacer()
            
        }.padding(.top, 50).frame(maxWidth: 380)
    }
}

struct CatzView_Previews: PreviewProvider {
    static var previews: some View {
        CatzView()
    }
}
