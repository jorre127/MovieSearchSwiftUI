//
//  Chip.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import SwiftUI

struct Chip: View {
    let label: String
    var color: Color = .primary
    
    var body: some View {
        Text(label)
            .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
            .background(
                Capsule()
                    .strokeBorder(color, lineWidth: 0.8)
            )
            .font(.caption)
    }
}

struct Chip_Previews: PreviewProvider {
    static var previews: some View {
        Chip(label: "Test")
    }
}
