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
            
            
            TextField("Kitten Name:", text: $kittenName)
            Spacer()
                
            
            
            
        }
    }
}

struct CatzView_Previews: PreviewProvider {
    static var previews: some View {
        CatzView()
    }
}
