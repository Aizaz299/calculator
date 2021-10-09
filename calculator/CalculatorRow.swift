//
//  CalculatorRow.swift
//  calculator
//
//  Created by Aizaz on 09/10/2021.
//

import SwiftUI

let ColumnCount = 4

struct CalculatorRow: View {
    var lables = ["","","",""]
    //Color is already defined in some view and getting colors by dot operator
    var colors: [Color] = [.gray,.gray,.gray,.orange]
    
    var body: some View {
        //display calculator button for each column
        HStack (spacing:10){
            ForEach(0..<ColumnCount){ index in
                CalculatorButton(label: lables[index], color: colors[index])
            }
        }
    }
}

struct CalculatorRow_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorRow(lables:["1","2","3","+"])
            .previewLayout(.fixed(width: 300, height: 100))
    }
}
