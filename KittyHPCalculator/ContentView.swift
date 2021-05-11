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
            Text("Seja bem vindo a calculadora para calcular o HP do seu felino, clique em iniciar para começar o cálculo").multilineTextAlignment(.center).padding()
            Spacer()
            
            
            
            ZStack {
                
                Rectangle().foregroundColor(.purple)
                NavigationLink(destination: CatzView()){
                    
                    Text("Iniciar")
                    
                }
                .background(Color.purple)
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
