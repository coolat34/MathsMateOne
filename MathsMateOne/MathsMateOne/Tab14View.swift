//
//  Tab14View.swift
//  MathsMate
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Tab14View: View {
    @State private var showButton = false
    let mathsTopic: String
    
    var body: some View {
       
            ScrollView {
                
                Text("**TIP** If an expression within a set of brackets is within another set of brackets,\n it is called a **Nested bracket** expression.\nYou should work on the values within each set of brackets separately\nbefore working on the rest of the expression/equation.\nIn addition to the standard brackets (),\nyou should use different brackets like {} or [] to make sense of the whole expression.\n\n**For Example**\n 2{3a + 5(b + c)} \n First, operate on the Inner Brackets 5(b + c) = 5b + 5c \n Now the expression looks like this 2{3a + 5b + 5c} \n Then Multiply out = 6a + 10b + 10c\nIf you didn't have the outer brackets then the expression would be interpreted as\n 6a + 5b + 5c which is different and wrong.\n\n **Solve** 3{3a - 2(a - b)} \nFirst Inner Brackets = 3{3a - 2a + 2b} \n Then Simplify = 3{a + 2b} \n Now Multiply out = 3a + 6b\n\nTry to solve the following exercises").font(.title2)
                HStack(spacing: 1) {
                    Button(action: {
                        showButton = true
                    }) {
                        CustomButton(label: " See Exercises", width: 240, altColour: true)
                        
                    } /// Custom Button
                    .sheet(isPresented: $showButton) {
                        QuestionAnswerView(exercises: Array(
                            ExerciseBank.shared.bracketsNested[0..<5]), mathsTopic: mathsTopic)
                    } /// sheet
                } /// Hstack
                } /// Scroll
        
                    .navigationTitle(mathsTopic)
                          } /// body
                      } /// struct
