//
//  Tab10View.swift
//  MathsMate
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Tab10View: View {
    @State private var showButton = false
    let mathsTopic: String
    var body: some View {
       
            ScrollView {
                
                Text("1st, if possible, simplify the fractions\n2nd Find the LCD. The smallest number that is divisible by all the denominators.\n3rd Divide the LCD by the first Denominator\n4th Multiply the result by the first Numerator.\nRepeat for all remaining fractions.\n5th SUBTRACT the new results above the line\n6th If possible, Simplify the fractions\n\n**For Example**\n(5÷7) - 2÷6)\n1st Simplify if possible (5÷7) - (1÷3)\n2nd Find the LCD. The smallest number that is divisible by all the denominators = 21\n3rd Divide the LCD by 1st Denominator 21 ÷ 7 = 3\nMultiply the result 3 by 1st Numerator 3 x 5 = 15\n4th Divide the LCD by 2nd Denominator 21 ÷ 3 = 7\nMultiply the result by 2nd Numerator 7 x 1 = 7  \nResult is 15 - 7 ÷ 8 equals 8 ÷ 21\n5th Cannot Simplify so answer =  8 ÷21\nTry to solve the following exercises\n").font(.title2)
                HStack(spacing: 1) {
                    Button(action: {
                        showButton = true
                    }) {
                        CustomButton(label: " See Exercises", width: 240, altColour: true)
                        
                    } /// Custom Button
                    .sheet(isPresented: $showButton) {
                        QuestionAnswerView(exercises: Array(
                            ExerciseBank.shared.fractSub[0..<5]), mathsTopic: mathsTopic)
                    } /// sheet
                } /// Hstack
                } /// Scroll
        
                    .navigationTitle(mathsTopic)
                          } /// body
                      } /// struct

#Preview {
    Tab10View(mathsTopic: "Maths")
}
