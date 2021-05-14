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
    
    @State var isShowingCatzView = false
    
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                VStack{
                    
                    Group{
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Image("kittyHome")
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    
                }
                
                
                VStack {
                    
                    
                    
                    Group{
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        
                    }
                    
                    
                    
                    NavigationLink(destination: CatzView()){
                        
                        ZStack{
                            
                            Rectangle().foregroundColor(.mainOrange).cornerRadius(15)
                            Text("Meow").foregroundColor(.white).font(.title2)
                            
                        }.frame(maxHeight: 50)
                        
                    }.padding(.top, 10).padding(.leading, 10).padding(.trailing, 10)
                    
                }
                
                
                
            }
            
            
            
        }
        
    }
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



