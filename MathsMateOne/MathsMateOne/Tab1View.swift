//
//  Tab1View.swift
//  Testing-1_15
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Operators: Identifiable {
let id: Int
var operatorSign: String
var job: String
}

struct Tab1View: View {
let mathsTopic: String
var opArray = [
Operators(id:1, operatorSign: "+", job: "Add"),
Operators(id:2, operatorSign: "-", job: "Subtract"),
Operators(id:3, operatorSign: "x", job: "Multiply"),
Operators(id:4, operatorSign: "÷", job: "Divide"),
Operators(id:5, operatorSign: "=", job: "Equals"),
Operators(id:6, operatorSign: "()", job: "Brackets"),
Operators(id:7, operatorSign: "^", job: "Exponent"),
Operators(id:8, operatorSign: "√", job: "Square root"),
Operators(id:9, operatorSign: "≠", job: "Not equal"),
Operators(id:10, operatorSign: "<", job: "less than"),
Operators(id:11, operatorSign: ">", job: "Greater than"),
Operators(id:12, operatorSign: "≤", job: "Less than or equal"),
Operators(id:13, operatorSign: "≥", job: "Greater than or equal")
]
var body: some View {
ScrollView {


Text("Operators perform calculations on numbers or variables.\nThese are the common ones used in Maths and Algebra.\n\n")
                .font(.title2)
Grid(alignment: .leading) {
    GridRow {
        Text("Operator").bold()
        Text("Meaning").bold()
    }

    ForEach(opArray) { item in
        GridRow {
            Text(item.operatorSign).font(.title2)
            Text(item.job).font(.title2)
        }
    }
}.navigationTitle(mathsTopic)
.padding(20)
        }

    }
}

#Preview {
    Tab1View(mathsTopic: "Maths")
}
