//
//  ContentView.swift
//  calculator
//
//  Created by Aizaz on 30/09/2021.
//

import SwiftUI

//custom colors

let darkerGray = Color(CGColor(gray: 0.1, alpha: 1))

let darkGray = Color(CGColor(gray: 0.3, alpha: 1))
struct CalculatorHome: View {
    @EnvironmentObject var calculator: Calculator
    
    var body: some View{
        GeometryReader{ geometry in
                VStack(alignment: .trailing, spacing: 0) {
                        Spacer()
                        //display the curreny value
                    Text(calculator.displayValue)
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .lineLimit(1)
                            .padding(.leading,20)
                            .padding(.trailing,20)
                        //display rows of buttons with spcfied labes
                        VStack(spacing:10){
                            CalculatorRow(lables: ["CE","","",String ("\u{00f7}")], colors: [darkGray,darkGray,darkGray,.orange])
                            CalculatorRow(lables: ["7","8", "9",String("\u{00d7}") ])
                            CalculatorRow(lables: ["4","5", "6","-" ])
                            CalculatorRow(lables: ["1","2", "3","+" ])
                            CalculatorRow(lables: ["0",".", "","=" ])
                        }.frame(height: geometry.size.height*0.7)
                        .padding()
                    }
                } //geometry end
                .background(darkerGray)
                .edgesIgnoringSafeArea(.all)
            
        } //end some view
} // view end

struct CalculatorHome_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorHome()
            .environmentObject(Calculator())
    }
}
