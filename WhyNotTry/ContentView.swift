//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Jacobson, Machiah - Student on 10/14/25.
//

import SwiftUI

struct ContentView: View {
    @State var selected = "Baseball"
    var activities = ["Archery", "Hiking", "Cooking", "Reading", "Board Games"]
    var body: some View {
        VStack {
            Text("Why not try...")
                .font(.largeTitle.bold())
            VStack {
                Circle()
                    .fill(.blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 144))
                            .foregroundColor(.white)
                    )
                Text("\(selected)!")
                    .font(.title)
            }
            Spacer()
            Button("Try again") {
                selected = activities.randomElement() ?? "Baseball"
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
