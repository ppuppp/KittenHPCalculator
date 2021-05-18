//
//  LoadingView.swift
//  KittyHPCalculator
//
//  Created by Gabriel Puppi on 12/05/21.
//

import SwiftUI

struct LoadingView: View {
    
    let userScore: Int
    let generalScore: Int
    let catName: String
    let catClass: String
    
    
    @State var progressToggle = false
    @State var progressRingEndingValue: CGFloat = 1

       var ringColor: Color = Color.mainOrange
       var ringWidth: CGFloat = 15
       var ringSize: CGFloat = 100
    
    
    @State private var isLoading = false
    
    var body: some View {
        
        ZStack{
            
            Circle()
                                    .trim(from: 0, to: progressToggle ? progressRingEndingValue : 0)
                                    .stroke(ringColor, style: StrokeStyle(lineWidth: ringWidth, lineCap: .round, lineJoin: .round))
                                    .background(Circle().stroke(ringColor, lineWidth: ringWidth).opacity(0.2))
                                    .frame(width: ringSize, height: ringSize)
                                    .rotationEffect(.degrees(-90.0))
                                    .onAppear() {
                                    
                                        withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: false)){
                                            self.progressToggle.toggle()
                                        }
            
                                    }
            
            

    
        }
        
    
    
    }
    
    
    
    
    
    
    

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(userScore: 5, generalScore: 5, catName: "Jorge", catClass: "maguinho")
    }
}
}
