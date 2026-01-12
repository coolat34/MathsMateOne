//
//  Tab4View.swift
//  MathsMate
//

import SwiftUI


struct Tab4View: View {
    @State private var showButton = false
    let mathsTopic: String

    var body: some View {
     
        ScrollView {
            Text("**TIP** When an expression contains more than one set of like terms, these should be combined and simplified before moving on.\nBelow are 4 terms, 5a, 2a 6b and 3b. \nThe terms contain the variables 'a' and 'b\n\n**Let's Simplify** 5a + 6b + 2a - 3b\n\n**First Collect like terms:**\n5a + 2a = 7a\n6b - 3b = 3b\n\n**Then Combine like terms:**\nAnswer is 7a + 3b\n\n**Simplify** 15x - 3y + 6y +7x - 5\n**Result** 22x + 3y - 5.\n\nFollowing on from Simplify, we can solve equations when we have values for one or more variables in the equation.\n\n if x = 3 and y = 2.\n Put these values into the exercises below and solve.\n\n").font(.title2)
            
            HStack(spacing: 1) {
                Button(action: {
                    showButton = true
                }) {
                    CustomButton(label: " See Exercises", width: 240, altColour: true)
                    
                } /// Custom Button
                .sheet(isPresented: $showButton) {
                    QuestionAnswerView(exercises: Array(
                        ExerciseBank.shared.simplify[0..<5]), mathsTopic: mathsTopic)
                } /// sheet
            } /// Hstack
            } /// Scroll
     
                .navigationTitle(mathsTopic)
                      } /// body
                  } /// struct
#Preview {
    Tab4View(mathsTopic: "Maths")
}


