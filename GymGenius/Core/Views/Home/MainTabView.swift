//
//  ContentView.swift
//  GymGenius
//
//  Created by Ishaan Bhasin on 10/8/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Profile")
                .tabBarItemModifier(imageName: "person.fill", textLabel: "Profile")
            Text("History")
                .tabBarItemModifier(imageName: "clock.fill", textLabel: "History")
            Text("Workout")
                .tabBarItemModifier(imageName: "plus", textLabel: "Workout")
            Text("Exercises")
                .tabBarItemModifier(imageName: "dumbbell.fill", textLabel: "Exercises")
            MeasurementTabView()
                .tabBarItemModifier(imageName: "fork.knife.circle.fill", textLabel: "Measure")
        }
        
    }
}

#Preview {
    MainTabView()
}
