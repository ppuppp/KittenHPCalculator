//
//  ContentView.swift
//  KittyHPCalculator
//
//  Created by Gabriel Puppi on 11/05/21.
//

import SwiftUI


extension Color {
    static let strongerOrange = Color(red: 255 / 255, green: 172 / 255, blue: 75 / 255)
    static let mainOrange = Color(red: 255 / 255, green: 196 / 255, blue: 128 / 255)
    static let selectedOrange = Color(red: 243 / 255, green: 153 / 255, blue: 153 / 255)
    
}

struct ContentView: View {
    
   
    
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                VStack{
                    
               
                  
                    Image("kittyHome")
                    
                    Spacer()
                   
                    
                    
                }
     
                VStack {

                    Group{
                        
                  
                        
                    }
       
                    NavigationLink(destination: CatzView()){
                        
                        ZStack{
                            
                            Rectangle().foregroundColor(.mainOrange).cornerRadius(15)
                            Text("Meow").foregroundColor(.white).font(Font.custom("Rubik-Regular", size:20))
                            
                        }.frame(maxHeight: 50)
                        
                    }.padding(.leading, 20).padding(.trailing, 20)
                    
                    
                    
                }.padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    
            }

        }.navigationBarTitle("", displayMode: .inline)
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



