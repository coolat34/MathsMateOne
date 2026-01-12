//
//  Tab16View.swift
//  MathsMateOne
//
//  Created by Chris Milne on 07/01/2026.
//

import SwiftUI

struct Tab16View: View {
    @State private var showButton = false
    let mathsTopic: String
    
    var body: some View {
       
            ScrollView {
                
                Text("**TIP** \n(A) Like signs result in PLUS\n(B) Unlike signs result in MINUS\n(C) Change the divide to multiply and Flip the sign\n\n**(A) Like Numbers**\n(+18) ÷ (+3) = (+9)\n(-9) ÷ (-3) = (+3) Minus **÷** Minus = **+**\n**Like Variables**\n(+A) ÷ (+B) = A÷B\n(-X) ÷ (-Y) = X÷Y Minus **÷** Minus = **+**\n**(B) Unlike Numbers**\n(+18) ÷ (-3) = (-6)\n(-12) ÷ (+3) = (-4)\n**Unlike variables**\n(+A) ÷ (-B) = -A÷B\n(-X) ÷ (+Y) = -X÷Y\n**(C) Flip the Sign**\n6 ÷ (2 ÷ 5) x 5 Change ÷ to x and Flip\n6 x (5 ÷ 2) x 5 = 30 ÷ 2 x 5 = 15 x 5 = 75\n\n Try to solve the following exercises:\n").font(.title2)
                HStack(spacing: 1) {
                    Button(action: {
                        showButton = true
                    }) {
                        CustomButton(label: " See Exercises", width: 240, altColour: true)
                        
                    } /// Custom Button
                    .sheet(isPresented: $showButton) {
                        QuestionAnswerView(exercises: Array(
                            ExerciseBank.shared.Division[0..<5]), mathsTopic: mathsTopic)
                    } /// sheet
                } /// Hstack
                } /// Scroll
        
                    .navigationTitle(mathsTopic)
                          } /// body
                      } /// struct


#Preview {
    Tab16View(mathsTopic: "Maths")
}
