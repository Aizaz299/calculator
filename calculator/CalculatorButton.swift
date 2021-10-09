//
//  CalculatorButton.swift
//  calculator
//
//  Created by Aizaz on 09/10/2021.
//

import SwiftUI

struct CalculatorButton: View {
    @EnvironmentObject var calculator: Calculator
    
    
    var label:String
    var color:Color
    
    var body: some View {
      
        Button {
            //inform model of button press
            calculator.buttonPressed(label: label)
        } label: {
            
            ZStack{
                Circle()
                    .fill(color)
                Text(label)
                    .font(.title)
                
            }//end zstack
            .accentColor(.white)
        } //end label

    } //end body
}  //end view

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(label: "1", color: .gray)
            .previewLayout(.fixed(width: 100, height: 100))
            .environmentObject(Calculator())
    }
}
