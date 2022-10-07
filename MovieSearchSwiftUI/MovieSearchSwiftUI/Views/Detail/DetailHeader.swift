//
//  DetailHeader.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import SwiftUI

struct DetailHeader: View {
    let movie: Movie
    
    var body: some View {
        HStack (alignment: .top){
            AsyncImage(
                url: URL(string: movie.largeCoverimage),
                content: { image in
                    image.image?.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 150)
                        .clipped()
                        .cornerRadius(8)
                 }
            )
            .padding(.trailing, 16)
            VStack (alignment: .leading){
                Text("Release Year: \(String(movie.year))")
                Text("Duration: \(movie.runtime)")
                ScrollView(.horizontal, showsIndicators: false){
                    HStack {
                        ForEach(movie.genres, id: \.self) { genre in
                            Chip(label: genre)
                        }
                    }
                }
                    .padding(.bottom, 8)
                RingView(percent: movie.rating * 10)
            }
            Spacer()
        }
    }
}

struct DetailHeader_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeader(movie: moviePreview)
    }
}
