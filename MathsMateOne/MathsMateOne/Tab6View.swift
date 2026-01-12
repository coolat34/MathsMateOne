//
//  Tab6View.swift
//  MathsMate
//

import SwiftUI

struct Tab6View: View {
    @State private var showButton = false
    let mathsTopic: String
    var body: some View {
   
        ScrollView {

            Text("**TIP** The Powers of a number/variable can be multiplied by adding the exponents.\n\nIf we want to multiply a² x a³, we add the exponents and get a⁵\n\n***Power of a product***\n(a x a) X (b x b) \nSimplified = (ab) X (ab)\n Simplified again = a²b²\n Simplified further = (ab)²\n\nif x = 3 and y = 2.\n Put these values into the equations and solve.\n\n").font(.title2)
            
            HStack(spacing: 1) {
                Button(action: {
                    showButton = true
                }) {
                    CustomButton(label: " See Exercises", width: 240, altColour: true)
                    
                } /// Custom Button
                .sheet(isPresented: $showButton) {
                    QuestionAnswerView(exercises: Array(
                        ExerciseBank.shared.powerMultiply[0..<5]), mathsTopic: mathsTopic)
                } /// sheet
            } /// Hstack
            } /// Scroll
    
                .navigationTitle(mathsTopic)
                      } /// body
                  } /// struct

#Preview {
    Tab6View(mathsTopic: "Maths")
}
