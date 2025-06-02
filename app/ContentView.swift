//
//  ContentView.swift
//  app
//
//  Created by Messs  on 3/6/25.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash", "Soccer"]
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    @State private var id = 1

    @State private var selected = "Baseball"
    var body: some View {
        VStack{
            Text("Why not try...")
            VStack{
                Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay(
                        Image(systemName:
                                "figure.\(selected.lowercased())")
                        .font(.system(size: 144))
                        .foregroundColor(.black)
                )
                Text("\(selected)")
                    .font(.title)
            }
            .transition(.slide)
            .id(id);
            Spacer()
            Button("Try again"){
                withAnimation(.easeInOut(duration: 1)){
                    selected = activities.randomElement() ?? "Archery"
                    id+=1
                }
            }.buttonStyle(.borderedProminent)
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View
    {
        ContentView();
    }
}
