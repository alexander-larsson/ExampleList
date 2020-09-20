//
//  RoundedCardModifier.swift
//  ListExample
//
//  Created by Alexander Larsson on 2020-09-20.
//

import Foundation
import SwiftUI

struct RoundedCardModifier: ViewModifier {
    
    private var backgroundColor: Color
    
    init(backgroundColor: Color) {
        self.backgroundColor = backgroundColor
    }
    
    func body(content: Content) -> some View {
        return content
        .padding(16)
        .background(backgroundColor)
        .cornerRadius(10)
        .shadow(color: Color(white: 0.8), radius: 3, x: 0, y: 0)
    }
}

extension View {
    func roundedCard(backgroundColor: Color = Color(.systemBackground)) -> some View {
        self.modifier(RoundedCardModifier(backgroundColor: backgroundColor))
    }
}

