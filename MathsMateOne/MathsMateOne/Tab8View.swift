//
//  Tab8View.swift
//  MathsMate
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Terminology: Identifiable {
let id = UUID()
var term: String
var meaning: String
}

struct Tab8View: View {
    let mathsTopic: String

    var expArray = [
        Terminology(term: "Numerators", meaning: "Values above the line in a fraction. (A/B) A is the Numerator"),
        Terminology(term:  "Denominators", meaning: "Values below the line. (A/B) B is the Denominator"),
        Terminology(term: "Sum", meaning: "The result of adding values to gether"),
        Terminology(term: "Product", meaning: "The result of multiplying values together"),
        Terminology(term: "Difference", meaning: "The result of subtracting one value from another"),
        Terminology(term: "Equation", meaning: "Values written in a mathematical statement using '='"),
        Terminology(term: "Expression", meaning: "Values written in a mathematical statement without '='"),
        Terminology(term: "Simplify", meaning: "Reduce a fraction to its lowest values. e.g. 4÷8 simplified to 1÷2"),
        Terminology(term: "LCD", meaning: "Lowest Common Denominator. \nThe smallest number that both denominators can divide into evenly.\n e.g. 1÷2 + 2÷3 The LCD is 6 because 6 is the smallest number that both 2 and 3 can divide into evenly.")
        ]
        
    var body: some View {
        ScrollView {
            
            
        Text("Dealing with Fractions means understanding the Terminology of Fractions.\nThese are the common ones used in Maths.\n\n")
                .font(.title2)
            Grid(alignment: .leading) {
                GridRow {
                    Text("Terminology").bold()
                    Text("Meaning").bold()
                }
                ForEach(expArray.indices, id: \.self) { index in
                    let item = expArray[index]

                    GridRow {
                        Text(item.term)
                            .background(index.isMultiple(of: 2)
                                        ? Color(.systemGray6)
                                        : Color.white)
                            .font(.title2)

                        Text(item.meaning)
                            .background(index.isMultiple(of: 2)
                                        ? Color(.systemGray6)
                                        : Color.white)
                            .font(.title2)
                        
                    }
                    .padding(8)
                }
                
            }
          

                    }
            .navigationTitle(mathsTopic)
                }
            }

#Preview {
    Tab8View(mathsTopic: "Maths")
}
