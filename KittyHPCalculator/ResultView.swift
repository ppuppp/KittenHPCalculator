//
//  ResultView.swift
//  KittyHPCalculator
//
//  Created by Gabriel Puppi on 14/05/21.
//

import SwiftUI

struct ResultView: View {
    
    
    @State var isPresented = false
    
    let userScore: Int
    let generalScore: Int
    let catName: String
    let catClass: String
    
    
    
    
    
    var body: some View {
        
        
        
        VStack{
            Spacer(minLength: 40)
            Text(catName).font(Font.custom("Rubik-Medium", size:30))
            Spacer()
            Spacer()
            Text(catClass).font(Font.custom("Rubik-Regular", size:25)).bold()
            
            
            ZStack{
                
                HStack{
                    Spacer(minLength: 80)
                    Circle().foregroundColor(.mainOrange)
                    Spacer(minLength: 80)
                }
                
                
                Text("\(userScore + generalScore) HP" ).font(Font.custom("Rubik-Medium", size:40)).foregroundColor(.white).bold()
                }
                
                Spacer(minLength: 50)
            
//            NavigationLink(destination: ContentView()){
//
//                ZStack{
//
//                    Rectangle().foregroundColor(.mainOrange).cornerRadius(15)
//                    Text("Reset").foregroundColor(.white).font(.title2)
//
//                }.frame(maxHeight: 50).padding(.leading, 10).padding(.trailing, 10)
//
//            }
            ZStack{
            
                Rectangle().foregroundColor(.mainOrange).cornerRadius(15).frame(maxHeight: 50)
                Button(action: {
                
                isPresented.toggle()
                
            }, label: {
                
                Text("Reset").foregroundColor(.white).font(Font.custom("Rubik-Regular", size:18))
            })
            
        }
            
        }.padding().fullScreenCover(isPresented: $isPresented, content: {
            ContentView()
            
    
        })
    }
}
    
    struct ResultView_Previews: PreviewProvider {
        static var previews: some View {
            ResultView(userScore: 7, generalScore: 5, catName: "Zezinhonho", catClass: "⚛︎ Mage ⚛︎")
        }
    }
