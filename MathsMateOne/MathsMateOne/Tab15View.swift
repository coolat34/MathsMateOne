//
//  Tab1View.swift
//  Testing-1_15
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Tab15View: View {
    @State private var showButton = false
    let mathsTopic: String
    
    var body: some View {
       
            ScrollView {
                
                Text("**TIP** \n(A) Like signs result in PLUS\n(B) Unlike signs result in MINUS\n\n**(A) Like Numbers**\n(+18) x (+2) = (+36)\n(-9) x (-3) = (+27) Minus **x** Minus = **+**\n**Like Variables**\n(+A) x (+B) = AB\n(-X) x (-Y) = XY Minus **x** Minus = **+**\n**(B) Unlike Numbers**\n(+18) x (-2) = (-36)\n(-12) x (+3) = (-36)\n**Unlike variables**\n(+A) x (-B) = -AB\n(-X) x (+Y) = -XY\n\n Try to solve the following exercises:\n").font(.title2)
                HStack(spacing: 1) {
                    Button(action: {
                        showButton = true
                    }) {
                        CustomButton(label: " See Exercises", width: 240, altColour: true)
                        
                    } /// Custom Button
                    .sheet(isPresented: $showButton) {
                        QuestionAnswerView(exercises: Array(
                            ExerciseBank.shared.Multiplication[0..<5]), mathsTopic: mathsTopic)
                    } /// sheet
                } /// Hstack
                } /// Scroll
           
                    .navigationTitle(mathsTopic)
                          } /// body
                      } /// struct
 

