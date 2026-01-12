//
//  Tab7View.swift
//  MathsMate
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Tab7View: View {
    @State private var showButton = false
    let mathsTopic: String
    var body: some View {
   
        ScrollView {
            Text("**TIP** The Powers of a number/variable can be divided by subtracting the exponents\n\n**Example** \n25a⁵ ÷ 5a³\n\nSubtract the exponents 3 from 5 results in 25a² ÷ 5a\nNow divide 25a² by 5a which results in 5a²\n\nTry to solve the following exercises. Click any question to see the answer").font(.title2)
            
            HStack(spacing: 1) {
                Button(action: {
                    showButton = true
                }) {
                    CustomButton(label: " See Exercises", width: 240, altColour: true)
                    
                } /// Custom Button
                .sheet(isPresented: $showButton) {
                    QuestionAnswerView(exercises: Array(
                        ExerciseBank.shared.powerDivide[0..<5]), mathsTopic: mathsTopic)
                } /// sheet
            } /// Hstack
            } /// Scroll
    
                .navigationTitle(mathsTopic)
                      } /// body
                  } /// struct

#Preview {
    Tab7View(mathsTopic: "Maths")
}
