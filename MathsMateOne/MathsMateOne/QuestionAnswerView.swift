//
//  QuestionAnswerView.swift
//  MathMate
//
//  Created by Chris Milne on 16/12/2025.
//

import SwiftUI

struct QuestionAnswerView: View {
    let exercises: [Exercise]
    let mathsTopic: String
    @State private var selectedExercise: Exercise? = nil
    @Environment(\.dismiss) var dismiss
    @State var rowCount: Int = 0
    var body: some View {
        Text(mathsTopic)
        Text("Click any question to see the answer\n\n")
            .frame(maxWidth: .infinity, maxHeight: 30, alignment: .center)
            .font(.title2)
            .bold()
        
        ZStack {  // Wrap the view in a ZStack so the card can float above it}
            ScrollView {
                ForEach(exercises.indices, id: \.self) { index in
                    let exercise = exercises[index]
                    let rowCount = index
                    Text(exercise.question)
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: 30, alignment: .leading)
                        .background(rowCount.isMultiple(of: 2) ? Color(.systemGray6) : Color.white)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            withAnimation(.spring(response: 0.35, dampingFraction: 0.8)) {
                                selectedExercise = exercise
                            } /// Animation
                            } /// onTap
                        } /// ForEach
                } /// ScrollView
            } /// ZStack
        Button(action: { dismiss() }) {
            CustomButton(label: "Return", width: 140, )
                .padding()
        }
        // MARK: - Overlay
            if let exercise = selectedExercise {
                AnswerOverlay(exercise: exercise) {
                    withAnimation(.spring(response: 0.35, dampingFraction: 0.8)) {
                        selectedExercise = nil
                    } /// Animation
                } /// AnswerOverlay
                    } /// If

            } /// Body
        } /// Struct
        
        
        struct AnswerOverlay: View {
            let exercise: Exercise
            let dismiss: () -> Void
            
            var body: some View {
                ZStack {
                    // Dimmed background
                    Color.black.opacity(0.4)
                        .ignoresSafeArea()
                        .onTapGesture { dismiss()
                        } /// onTap
                    
                    // Card
                    VStack(spacing: 16) {
                        Text("Answer")
                            .font(.headline)
                        
                        Text(exercise.ans1)
                        Text(exercise.ans2)
                        Text(exercise.ans3)
                        Text(exercise.ans4)
                        Text(exercise.ans5)
                            .font(.title2)
                            .bold()
                    } /// VStack
                    .padding()
                    .frame(maxWidth: 320)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(.systemBackground))
                            .shadow(radius: 12)
                    )
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                } /// ZStack
            } /// Body
        } /// struct

