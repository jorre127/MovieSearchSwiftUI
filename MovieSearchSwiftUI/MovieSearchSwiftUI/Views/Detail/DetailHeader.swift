//
//  DetailHeader.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import SwiftUI

struct DetailHeader: View {
    let image: String
    
    var body: some View {
        HStack{
            AsyncImage(
                url: URL(string: image),
                content: { image in
                    image.image?.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 150)
                        .clipped()
                        .cornerRadius(8)
                 }
            )
            Spacer()
        }
    }
}

struct DetailHeader_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeader(image: moviePreview.mediumCoverImage)
    }
}
