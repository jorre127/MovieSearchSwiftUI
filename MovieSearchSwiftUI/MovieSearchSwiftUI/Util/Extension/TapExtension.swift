//
//  TapExtension.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import SwiftUI

struct TouchFeedback: ViewModifier{
    @State var isPressed: Bool = false
    var onTapped: () -> Void
    
    func body(content: Content) -> some View {
        Button (action: onTapped) { content }
        .buttonStyle(.plain)
        .scaleEffect(isPressed ? 0.98 : 1)
        ._onButtonGesture(
            pressing: { pressing in
                isPressed = pressing
        }, perform: {})
    }
}

extension View {
    public func touchFeedback(perform action: @escaping () -> Void) -> some View { modifier(TouchFeedback(onTapped: action)) }
}
