//
//  Tab9View.swift
//  MathsMate
//
//  Created by Chris Milne on 13/11/2025.
//

import SwiftUI

struct Tab9View: View {
    @State private var showButton = false
    let mathsTopic: String
    var body: some View {
      
        ScrollView {
            
            Text("1st If possible, simplify the fractions\n2nd Find the LCD\n3rd Divide the LCD by the first Denominator\nMultiply the result by the first Numerator.\nRepeat for all fractions.\n4th SUM the new results above the line\n5th If possible, Simplify the fractions\n\n**For Example**\n(5÷7) + 2÷6)\n1st Simplify if possible. Result is (5÷7) + (1÷3)\n2nd Find the LCD which is 21. The smallest number that can be divided evenly by 7 and 3\n3rd Divide the LCD by 1st Denominator 7 = 3\nMultiply the result 3 x 1st Numerator 5 = 15\n4th Divide the LCD by 2nd Denominator 3 = 7\nMultiply the result 7 x 2nd Numerator 1 = 7  \nResult is 15 + 7 ÷ 21 equals 22÷ 21\n5th Cannot Simplify so the final answer =  22÷21\n\nTry to solve the following exercises\n")
                .font(.title2)

                HStack(spacing: 1) {
                    Button(action: {
                        showButton = true
                    }) {
                        CustomButton(label: " See Exercises", width: 240, altColour: true)
                        
                    } /// Custom Button
                    .sheet(isPresented: $showButton) {
                        QuestionAnswerView(exercises: Array(
                            ExerciseBank.shared.fractAdd[0..<5]), mathsTopic: mathsTopic)
                    } /// sheet
                } /// Hstack
             } /// Scroll
      
                    .navigationTitle(mathsTopic)
                          } /// body
                      } /// struct
#Preview {
    Tab9View(mathsTopic: "Maths")
}
