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
            Text("String qualquer")
            Spacer()
            
            
            
            ZStack {
                
                Rectangle().foregroundColor(.blue)
                NavigationLink(destination: CatzView()){
                    
                    Text("Iniciar")
                    
                }
                .background(Color.blue)
                .foregroundColor(.white)
                .font(.largeTitle)
               
                
                
                
            }.cornerRadius(30).padding(.bottom, 25).frame(width:200, height:80 )
            
            
           
            
        }.background(Color.white)
        .navigationBarTitle("Kitty HP Calculator", displayMode: .inline)
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
