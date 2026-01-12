//
//  Tab5View.swift
//  MathsMate
//

import SwiftUI

struct Tab5View: View {

    let mathsTopic: String
    var body: some View {
        ScrollView {

            Text("**TIP** A **Product** is the result of multiplying 2 or more numbers together.\n So, the product of 2 x 3 is 6.\n\n**TIP** The Product of equal numbers is called a **Power**\n\n\nSo, 3 x 3 is called  3 to the power of 2 or 3 squared, written as 3²\n3 x 3 x 3 becomes 3 cubed, written as 3³ \n3 x 3 x 3 x 3 becomes 3 to the power of 4 and so on.\n\nThe small number above each base number is called the **exponent**.\nIt tells us how many times the base number is multiplied by itself.\nSo 3² results in 9.\n3³ results in 27.\n\nThe opposite or inverse of a Square is called a **Square Root**\nThe square root of 9 is 3 written as √9 = 3.\nThe square root of 100 is 10 because\n 10 x 10 = 100 and √100 = 10")
                .font(.title2)
        }
        .navigationTitle(mathsTopic)
    }
}
#Preview {
    Tab5View(mathsTopic: "Maths")
}
