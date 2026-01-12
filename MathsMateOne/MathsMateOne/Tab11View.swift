//
//  Tab11View.swift
//  MathsMate
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Tab11View: View {
    @State private var showButton = false
    let mathsTopic: String
    
    var body: some View {
    
            ScrollView {
                
                Text("1st If possible, Simplify the fractions\n2nd Multiply values above the line (Numerators) \n3rd Multiply values below the line (Denominators)\n4th If possible, Simplify the fractions\n**For example**\n(3÷5) x (5÷13)\n1st Cannot Simplify so fraction remains 3÷5 x 5÷13\n2nd Multiply values above the line (Numerators) = 3 x 5 = 15\n3rd Multiply values below the line (Denominators) = 5 x 13 = 65\n4th Answer =  15÷65\nSimplify = 3÷13\n\nTry to solve the following exercises\n").font(.title2)
                HStack(spacing: 1) {
                    Button(action: {
                        showButton = true
                    }) {
                        CustomButton(label: " See Exercises", width: 240, altColour: true)
                        
                    } /// Custom Button
                    .sheet(isPresented: $showButton) {
                        QuestionAnswerView(exercises: Array(
                            ExerciseBank.shared.fractMul[0..<5]), mathsTopic: mathsTopic)
                    } /// sheet
                } /// Hstack
                } /// Scroll
       
                    .navigationTitle(mathsTopic)
                          } /// body
                      } /// struct
#Preview {
    Tab11View(mathsTopic: "Maths")
}
