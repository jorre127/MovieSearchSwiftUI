//
//  SearchListItem.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import SwiftUI

struct SearchListItem: View {
    let title: String
    let image: String
    
    var body: some View {
        HStack {
            AsyncImage(
                url: URL(string: image),
                content: { image in
                    image.image?.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 80)
                        .clipped()
                        .cornerRadius(8)
                 }
            )
                .frame(width: 50, height: 50)
                .padding(.trailing, 16)
            Text(title)
            Spacer()
        }
        .padding(.vertical, 8)
    }
}

struct SearchListItem_Previews: PreviewProvider {
    static var previews: some View {
        SearchListItem(
            title: "TestString",
            image: "https://play-lh.googleusercontent.com/V_P-I-UENK93ahkQgOWel8X8yFxjhOOfMAZjxXrqp311Gm_RBtlDXHLQhwFZN8n4aIQ"
        )
    }
}
