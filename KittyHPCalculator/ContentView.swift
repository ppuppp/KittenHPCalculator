//
//  ContentView.swift
//  KittyHPCalculator
//
//  Created by Gabriel Puppi on 11/05/21.
//

import SwiftUI

struct ContentView: View {

    
    
    @State var isShowingCatzView = false
    
    
    
    
    var body: some View {
        
        NavigationView{
        
        VStack{
                
            
               Spacer()
           
             
           Image("kittylogo")
           
            Spacer().frame(maxHeight: 170)
            
            
            
            ZStack {
                
                
                Rectangle().frame(maxWidth:350, maxHeight: 50)
                    .foregroundColor(.purple)
                    .cornerRadius(15)
                NavigationLink(destination: CatzView()){
                    
                    Text("meow").padding(.bottom, 4)
                    
            }
                .background(Color.purple)
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
