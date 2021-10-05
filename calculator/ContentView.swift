//
//  ContentView.swift
//  calculator
//
//  Created by Aizaz on 30/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    let buttons = [["7", "8", "9", "x"],
                   ["4", "5","6","-"],
                   ["1", "2", "3", "+"],
                   ["0", ".", ".", "="]]

    var body: some View {
        ZStack(alignment: .bottom){
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack
                {
                    Spacer()
                Text("42").foregroundColor(.white)
                    .font(.system(size:60))
                }.padding()
                
                ForEach(buttons, id: \.self){ row in
                    HStack{
                        ForEach(row, id: \.self){button in
                            Text(button)
                                .font(.system(size:32))
                                .frame(width:80, height:80)
                                .foregroundColor(.white)
                            
                        }
                    }
                    
                }
                
            }
        
        }
        
        
      
       
} // view end

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
    
}