//
//  TabBarItemViewModifier.swift
//  GymGenius
//
//  Created by Ishaan Bhasin on 10/8/23.
//

import SwiftUI

struct TabBarItemViewModifier: ViewModifier {
    let imageName: String
    let labelText: String
    
    func body(content: Content) -> some View {
        content
            .tabItem {
                VStack{
                    Image(systemName: imageName)
                    Text(labelText)
                        .fontWeight(.semibold)
                }
            }
    }
}

extension View {
    func tabBarItemModifier(imageName: String, textLabel: String) -> some View{
        modifier(TabBarItemViewModifier(imageName: imageName, labelText: textLabel))
    }
}
