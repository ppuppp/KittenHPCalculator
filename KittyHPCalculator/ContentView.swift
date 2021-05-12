//
//  ContentView.swift
//  KittyHPCalculator
//
//  Created by Gabriel Puppi on 11/05/21.
//

import SwiftUI


extension Color {
    static let strongerOrange = Color(red: 234 / 255, green: 148 / 255, blue: 106 / 255)
    static let mainOrange = Color(red: 244 / 255, green: 179 / 255, blue: 147 / 255)
    static let selectedOrange = Color(red: 243 / 255, green: 153 / 255, blue: 153 / 255)
    
}

struct ContentView: View {

    
    
    @State var isShowingCatzView = false
    
    
    
    
    var body: some View {
        
        NavigationView{
        
        VStack{
                
            
               Spacer()
           
             
           Image("kittyorange")
           
            Spacer().frame(maxHeight: 170)
            
            
            
            ZStack {
                
                
                Rectangle().frame(maxWidth:350, maxHeight: 50)
                    .foregroundColor(.mainOrange)
                    .cornerRadius(15)
                NavigationLink(destination: CatzView()){
                    
                    Text("meow").padding(.bottom, 4)
                    
            }
                .background(Color.mainOrange)
                .foregroundColor(.white)
                .font(.title2)
                .frame(minWidth:350, minHeight: 50)
            
                
                
                
            }.cornerRadius(15).frame(width:360, height:50)
            
            
            
           
            
        }.background(Color.white)
        .navigationBarTitle("Cat HP Calculator", displayMode: .inline)
        
      
            
        }.frame(maxHeight: 800)
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
