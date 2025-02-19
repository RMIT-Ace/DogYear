//
//  ContentView.swift
//  DogYear
//
//  Created by ace on 19/2/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var humanYear = 0.0
    
    private let dogYearPerHumanYear: Int = 7
    
    private var dogYear: Int {
        Int(humanYear) * dogYearPerHumanYear
    }
    
    var body: some View {
        VStack {
            Text("Dog Year Calculator")
            
            HStack {
                avatarView(emoji: "👨‍💼", year: Int(humanYear))
                avatarView(emoji: "🐶", year: dogYear)
            }
            Slider(value: $humanYear, in: 0...16)
                .padding(.horizontal, 40)

        }
        .padding()
    }
    
    func avatarView(emoji: String, year: Int) -> some View {
        VStack {
            Text(emoji)
                .font(.system(size: 80, weight: .bold))
            Text("\(year)")
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 30)
        .background(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 1)))
    }
}

#Preview {
    ContentView()
}
