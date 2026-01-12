//
//  Tab12View.swift
//  MathsMate
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Tab12View: View {
    @State private var showButton = false
    let mathsTopic: String
    
    var body: some View {
    
            ScrollView {
                
                Text("**TIP** When dividing fractions that are within brackets,\n It's easier to change the divide sign ÷ between the brackets, to a Multiply sign x\n then turn the next fraction in the next set of brackets upside down (Flip)\nthen follow the rules for Fractions Multiply.\n\n1st If possible, Simplify the fractions\n2nd Change the Divide sign to a Multiply sign and FLIP the next fraction\n3rd Multiply the (Numerators)\n4th Multiply the (Denominators)\n5th If possible, Simplify the fractions\n\n**For example**\n(3 ÷ 4) ÷ (2 ÷ 6)\n1st Simplify and get (3 ÷ 4) ÷ (1 ÷ 3)\n2nd Change the Divide sign to a Multiply sign = (3 ÷ 4) x (1 ÷ 3)\nand FLIP the next fraction = (3 ÷ 4) x (3 ÷ 1)\n3rd Multiply the (Numerators) and get 3 x 3 = 9\n4th Multiply the (Denominators) and get 4 x 1 = 4\n5th Cannot Simplify so Answer is 9 ÷ 4\nTry to solve the following exercises\n").font(.title2)
                HStack(spacing: 1) {
                    Button(action: {
                        showButton = true
                    }) {
                        CustomButton(label: " See Exercises", width: 240, altColour: true)
                        
                    } /// Custom Button
                    .sheet(isPresented: $showButton) {
                        QuestionAnswerView(exercises: Array(
                            ExerciseBank.shared.fractDiv[0..<5]), mathsTopic: mathsTopic)
                    } /// sheet
                } /// Hstack
                } /// Scroll
       
                    .navigationTitle(mathsTopic)
                          } /// body
                      } /// struct
#Preview {
    Tab12View(mathsTopic: "Maths")
}
