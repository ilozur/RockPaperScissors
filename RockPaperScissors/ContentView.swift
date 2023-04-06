//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Edmond Podlegaev on 07.04.2023.
//

import SwiftUI

struct choiseButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .buttonStyle(.borderedProminent)
            .tint(.mint)
            .font(.title3.bold())
            .shadow(radius: 5)
    }
}

struct ContentView: View {
    
    let variants = ["Rock", "Paper", "Scissors"]
    
    @State private var playerChoice: String = ""
    @State private var rivalChoice: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.indigo
                    .ignoresSafeArea()
                VStack{
                    Text("Rival choise is \(variants[Int.random(in:0...2)])")
                        .padding()
                        
                    
                    Text("You choise is \(playerChoice)")
                        .padding()
                    
                    HStack {
                        Button(variants[0]) {playerChoice = variants[0]}
                            .modifier(choiseButton())
                        Button(variants[1]) {playerChoice = variants[1]}
                            .modifier(choiseButton())
                        Button(variants[2]) {playerChoice = variants[2]}
                            .modifier(choiseButton())
                    }
                }
            }
        .navigationTitle("Rock, Paper, Scissors")
        .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
