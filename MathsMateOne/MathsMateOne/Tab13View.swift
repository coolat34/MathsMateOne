//
//  Tab1View.swift
//  Testing-1_15
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Examples: Identifiable {
let id = UUID()
var exp: String
var results: String
var change: String
}

struct Tab13View: View {
    @State private var showButton = false
    let mathsTopic: String
    var exampleArray = [
        Examples(exp: "1 + (2 + 3)", results: "1 + 2 + 3 = 6", change: "No Change"),
        Examples(exp: "1 + (2 - 3)", results: "1 + 2 - 3 = 0", change: "No Change"),
        Examples(exp: "1 -(2 + 3)",  results: "1 - 2 - 3 = -4", change: "Changed"),
        Examples(exp: "1 - (2 - 3)", results: "1 - 2 + 3 = 2", change: "Changed"),
        Examples(exp: "4(2x - 5)",   results: "8x - 20",       change: "No Change"),
        Examples(exp: "3x - 2(x + 4)", results: "3x - 2x - 8", change: "Changed"),
        Examples(exp: "1 ÷ 3(2y - 4)", results: "1 ÷ 6y - 12", change: "No Change")
        
    ]
    var body: some View {
       
            ScrollView {
                
                Text("Brackets are used to group together parts of an expression so that you can work on them separately.\nBrackets are important. Without brackets the results of an expression or equation are completely different.\n\n**Two important rules apply here.**\nWhen a plus (+) sign is in front of the brackets, the signs in the brackets are unchanged\nWhen a minus (-) sign  is in front, the signs in the brackets are changed to plus (+) signs\n\n**Consider these examples**")
                    .font(.title2)
                Grid(alignment: .leading) {
                  
                    ForEach(exampleArray.indices, id: \.self) { index in
                        let item = exampleArray[index]

                        GridRow {
                            Text(item.exp)
                               
                                .font(.title2)
                            Text("**Apply the rules**")
                            Text(item.results)
                                
                                .font(.title2)
                            Text(item.change)
                        }
                        .padding(8)
                    }
                    
                }
                
                Text("Try to solve the following exercises\n").font(.title2)
                HStack(spacing: 1) {
                    Button(action: {
                        showButton = true
                    }) {
                        CustomButton(label: " See Exercises", width: 240, altColour: true)
                        
                    } /// Custom Button
                    .sheet(isPresented: $showButton) {
                        QuestionAnswerView(exercises: Array(
                            ExerciseBank.shared.brackets[0..<5]), mathsTopic: mathsTopic)
                    } /// sheet
                } /// Hstack
                } /// Scroll
           
                    .navigationTitle(mathsTopic)
                          } /// body
                      } /// struct

#Preview {
    Tab13View(mathsTopic: "Maths")
}
