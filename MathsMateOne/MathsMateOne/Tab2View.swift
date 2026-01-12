//
//  Tab1View.swift
//  Testing-1_15
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI
struct Bedmas: Identifiable {
let id: Int
var firstLetter: String
var meaning: String
var example: String
}

struct Tab2View: View {
let mathsTopic: String
var operation = [
Bedmas(id:1, firstLetter: "B", meaning: "Brackets", example: "(2 x 5) + 10 = 20"),
Bedmas(id:2, firstLetter: "E", meaning: "Exponents", example: "3² + 5³ = 134"),
Bedmas(id:3, firstLetter: "D", meaning: "Division", example: "10 ÷ 5 -2 = 0"),
Bedmas(id:4, firstLetter: "M", meaning: "Multiplication", example: "3 x 10 + 1 = 31"),
Bedmas(id:5, firstLetter: "A", meaning: "Addition", example: "5 + 10  = 15"),
Bedmas(id:6, firstLetter: "S", meaning: "Subtraction", example: "20 - 10 = 10")

]

var body: some View {
ScrollView {


            Text("Faced with a mixed expression like \n(2 x 5) + 3² + 10 - 6 ÷ 2 \nWhere do you start. A simple way of remembering is by using BEDMAS.\n **BEDMAS** stands for")
.font(.title2)
Grid(alignment: .leading) {
    GridRow {
        Text("").bold()
        Text("Meaning").bold()
        Text("Example").bold()
    }

    ForEach(operation) { item in
        GridRow {
            Text(item.firstLetter)
            Text(item.meaning)
            Text(item.example)
        }
    }
}
.padding()
.font(.title2)
Text("**Always evaluate in this order**\n**B**, evaluate values in the brackets.\n**E**, evaluate values that have an exponent.\n**D** and **M**, evaluate Division or Multiplication values.\n**A** and **S**, evaluate Addition or Subtraction values\n\nSo, for this expression (2 x 5) + 3² + 10 - 6 ÷ 2\n**B** first evaluate (2 x 5) = 10\n**E** Then 3² = 9\n**D** Next 6 ÷ 2 = 3\nThe result is now 10 + 9 + 10 - 3\n**A** and **S** Finally perform the addition and subtraction operations from left to right.\nAnswer = 26").font(.title2)

        }
.navigationTitle(mathsTopic)
    }
}

#Preview {
    Tab2View(mathsTopic: "Maths")
}
