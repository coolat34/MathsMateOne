//
//  Handler.swift
//  MathsMate
//
//  Created by Chris Milne on 14/12/2025.
//

import Foundation
enum Topic {
    case transform
    case simplify
    case powerMultiply
    case powerDivide
    case fractAdd
    case fractSub
    case fractMul
    case fractDiv
    case brackets
    case bracketsNested
    case Multiplication
    case Division

}
struct Exercise: Identifiable  {
    let id = UUID()
    let question: String
    let ans1: String
    let ans2: String
    let ans3: String
    let ans4: String
    let ans5: String

}

final class ExerciseBank {
    
    static let shared = ExerciseBank()
    
    private init() {}
    
    let transform: [Exercise] = [
        Exercise(question: "5a + 6b + 2a - 3b", ans1: "7a + 3b", ans2: "", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "6x + 2y - 3x + 4y - 3", ans1: "3x + 6y - 3", ans2: "", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "a - 2 + 3b + 6 + 5a", ans1: "6a + 3b + 4", ans2: "", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "23a + 45b + 67c - 12a + 34b", ans1: "11a + 79b + 67c", ans2: "", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "-18a + 9b -6c + a - 3b + 2c", ans1: "-17a + 6b - 4c", ans2: "", ans3: "", ans4: "", ans5: "")
    ]
    
    let simplify: [Exercise] = [
        Exercise(question: "6x + 2y - 3x + 4y -3", ans1: "18  + 4 - 9 + 8 - 3", ans2: " = 18", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "4xy - 2xy + 6xy", ans1: "24 - 12 + 36", ans2: " = 48", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "x - 2 + 3x + 6 + 5y", ans1: "3 - 2 + 9 + 6 + 10", ans2: "  = 26", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "15x - 3y + 6y +7x - 5", ans1: "59 + 6 - 5", ans2: "   = 60", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "-32x + 12y - 4y + 16y + 24x", ans1: "72 + 48", ans2: "  = 120", ans3: "", ans4: "", ans5: "")
    ]
    
    let powerMultiply: [Exercise] = [
        Exercise(question: "x³ x y³", ans1: "27 x 8", ans2: "  = 216", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "2x³ - 3y³", ans1: "54 - 24", ans2: "  = 30", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "3x³ + 4y⁶", ans1: "81 + 256", ans2: "  = 337", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "2xy + 3x²y", ans1: "12 + 54", ans2: "  = 66", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "2x²y + 3xy²", ans1: "36 + 36", ans2: "  = 72", ans3: "", ans4: "", ans5: "")
    ]
    
    let powerDivide: [Exercise] = [
        Exercise(question: "84a⁴ ÷ 4a²", ans1: "21a²", ans2: "", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "27a⁵ ÷ 9a²", ans1: "3a³", ans2: "", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "64a⁴ ÷ 16a³", ans1: "4a", ans2: "", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "125a⁵ ÷ 25a⁴", ans1: "5a", ans2: "", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "256a⁶ ÷ 64a⁴", ans1: "4a²", ans2: "", ans3: "", ans4: "", ans5: "")
    ]
    
    let fractAdd: [Exercise] = [
        Exercise(question: "a ÷ 5 + a ÷ 7", ans1: "7a + 5a ÷35", ans2: "   = 12a ÷ 35", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "2x ÷ 3 - 3x ÷ 5", ans1: "10x - 9x ÷ 15", ans2: "   = x ÷ 15", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "3a ÷ 2b + 5a ÷ 3b", ans1: "9ab + 10ab ÷ 6b", ans2: "   = 19ab ÷ 6b", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "3ab + 5 ÷ 2b", ans1: "3ab + 5b ÷ 2b", ans2: "   = 3ab + 5 ÷ 2", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "x - 1 + 1 ÷ x", ans1: "(x² ÷ x) - (x ÷ x) + (1 ÷ x)", ans2: "   = x² - x + 1 ÷ x", ans3: "", ans4: "", ans5: "")
    ]
    
    let fractSub: [Exercise] = [
        Exercise(question: "a ÷ 5 + a ÷ 7", ans1: "7a + 5a ÷35", ans2: "   = 12a ÷ 35", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "2x ÷ 3 - 3x ÷ 5", ans1: "10x - 9x ÷ 15", ans2: "   = x ÷ 15", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "3a ÷ 2b + 5a ÷ 3b", ans1: "9ab + 10ab ÷ 6b", ans2: "   = 19ab ÷ 6b", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "3ab + 5 ÷ 2b", ans1: "3ab + 5b ÷ 2b", ans2: "   = 3ab + 5 ÷ 2", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "x - 1 + 1 ÷ x", ans1: "(x² ÷ x) - (x ÷ x) + (1 ÷ x)", ans2: "   = x² - x + 1 ÷ x", ans3: "", ans4: "", ans5: "")
    ]
    
    let fractMul: [Exercise] = [
        Exercise(question: "a ÷ 5 + a ÷ 7", ans1: "7a + 5a ÷35", ans2: "   = 12a ÷ 35", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "2x ÷ 3 - 3x ÷ 5", ans1: "10x - 9x ÷ 15", ans2: "   = x ÷ 15", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "3a ÷ 2b + 5a ÷ 3b", ans1: "9ab + 10ab ÷ 6b", ans2: "   = 19ab ÷ 6b", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "3ab + 5 ÷ 2b", ans1: "3ab + 5b ÷ 2b", ans2: "   = 3ab + 5 ÷ 2", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "x - 1 + 1 ÷ x", ans1: "(x² ÷ x) - (x ÷ x) + (1 ÷ x)", ans2: "   = x² - x + 1 ÷ x", ans3: "", ans4: "", ans5: "")
    ]
    
    let fractDiv: [Exercise] = [
        Exercise(question: "a ÷ 5 + a ÷ 7", ans1: "7a + 5a ÷35", ans2: "   = 12a ÷ 35", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "2x ÷ 3 - 3x ÷ 5", ans1: "10x - 9x ÷ 15", ans2: "   = x ÷ 15", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "3a ÷ 2b + 5a ÷ 3b", ans1: "9ab + 10ab ÷ 6b", ans2: "   = 19ab ÷ 6b", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "3ab + 5 ÷ 2b", ans1: "3ab + 5b ÷ 2b", ans2: "   = 3ab + 5 ÷ 2", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "x - 1 + 1 ÷ x", ans1: "(x² ÷ x) - (x ÷ x) + (1 ÷ x)", ans2: "   = x² - x + 1 ÷ x", ans3: "", ans4: "", ans5: "")
    ]
    
    let brackets: [Exercise] = [
        Exercise(question: "2(4x + 3y) + 6(2x - y)", ans1: "8x + 6y + 12x - 6y", ans2: "   = 20x ", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "5x - (5y + 2x)", ans1: "5x - 5y - 2x", ans2: "   = 3x - 5y ", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "x(2x - y) -x(x - y) - y(x + 2y)", ans1: "2x² - xy - x² + xy - xy - 2y²", ans2: "   = x² - xy - 2y² ", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "6a²(3a + 7b - 6c)", ans1: "(6a² x 3a) + (6a² x 7b) - (6a² x 6c)", ans2: "   = 18a³ + 42a²b - 36a²c ", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "5x - (x - 2y + 2z)", ans1: "5x -x + 2y - 2z", ans2: "   = 4x + 2y - 2z ", ans3: "", ans4: "", ans5: "")
    ]
    
    let bracketsNested: [Exercise] = [
        Exercise(question: "3{5a - 3(a + 1)}", ans1: "Inner bracket 3(5a-3a-3)", ans2: " Combine 3(2a-3)", ans3: "Multiply = 6a - 9", ans4: "", ans5: ""),
        Exercise(question: "5a² + 2a{b - (a + c)}", ans1: "Inner bracket 5a² + 2a(b - a - c)", ans2: "Next bracket 5a² + 2ab - 2a² - 2ac    ", ans3: "Simplify 3a² + 2ab - 2ac", ans4: "", ans5: ""),
        Exercise(question: "3bc - 2{b(b - c) - c(b + c)}", ans1: "Brackets 3bc - 2{b² - bc - bc - c²}", ans2: "Simplify 3bc - 2{b² - 2bc - c²}", ans3: "Inner Bracket 3bc - 2b² + 4bc + 2c²", ans4: "Like terms = 7bc - 2b² + 2c²", ans5: ""),
        Exercise(question: "15x - [3x - {2x - (x - 5)}]", ans1: "Inner bracket 15x - [3x-{2x-x+5}]", ans2: "Like terms  15x -[3x-{x+5}]", ans3: "Inner bracket 15x-[3x-x-5]", ans4: "Like terms 15x-[2x-5]", ans5: " = 13x + 5"),
        Exercise(question: "2(x + y) -x -y", ans1: "Bracket first  2x+2y -x-y", ans2: "Like terms  x + 2y - y ", ans3: "Like terms x + y", ans4: "", ans5: "")
    ]
    
    let Multiplication: [Exercise] = [
        Exercise(question: "(-2a) X (+2b)", ans1: "= -4ab", ans2: "   ", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "(+10x) X (-2y)", ans1: "= -20xy", ans2: "   = ", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "(-4) X (+3) X (-2)", ans1: "= 24", ans2: "   = ", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "(-a) X (a - 2b - c)", ans1: "= -a² + 2ab +ac", ans2: "   = ", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "(+ 2a) X (-5b) X (-2a)", ans1: "= +20ab²", ans2: "   = ", ans3: "", ans4: "", ans5: "")
    ]
    
    let Division: [Exercise] = [
        Exercise(question: "(+10x) ÷ (-2y)", ans1: "", ans2: "   = -5x ÷ y ", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "(-18xy) ÷ (-6x)", ans1: "-18y ÷ -6", ans2: "   = +3y", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "9 ÷ 3 ÷ 6 x 2", ans1: "9 x 6 ÷ 3 x 2", ans2: "54 ÷ 3 x 2", ans3: "18 x 2", ans4: " = 36", ans5: ""),
        Exercise(question: "(+15x²y²) ÷ (-5xy)", ans1: "+15xy ÷ -5xy", ans2: "   = -3xy", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "(-12a²b²) ÷ (-3ab)", ans1: "-12ab  ÷ -3ab", ans2: "   = +4ab", ans3: "", ans4: "", ans5: "")
    ]
    
   
   
    
    let dummy: [Exercise] = [
        Exercise(question: "", ans1: "", ans2: "   = ", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "", ans1: "", ans2: "   = ", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "", ans1: "", ans2: "   = ", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "", ans1: "", ans2: "   = ", ans3: "", ans4: "", ans5: ""),
        Exercise(question: "", ans1: "", ans2: "   = ", ans3: "", ans4: "", ans5: "")
    ]
    
    
    
    func exercises(for topic: Topic) -> [Exercise] {
            switch topic {
            case .transform:
                return transform
            case .simplify:
                return simplify
            case .powerMultiply:
                return powerMultiply
            case .powerDivide:
                return powerDivide
            case .fractAdd:
                return fractAdd
            case .fractSub:
                return fractSub
            case .fractMul:
                return fractMul
            case .fractDiv:
                return fractDiv
            case .brackets:
                return brackets
            case .bracketsNested:
                return bracketsNested
            case .Multiplication:
                return Multiplication
            case .Division:
                return Division
          
            }
        }
}
