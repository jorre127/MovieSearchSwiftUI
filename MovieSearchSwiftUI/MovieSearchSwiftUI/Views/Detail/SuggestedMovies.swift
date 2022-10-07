//
//  SuggestedMovies.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import SwiftUI

struct SuggestedMovies: View {
    let movies: [Movie]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack (alignment: .top){
                ForEach(movies) { movie in
                    NavigationLink(destination: DetailScreen(movie: movie)){
                        VStack {
                            AsyncImage(
                                url: URL(string: movie.mediumCoverImage),
                                content: { image in
                                    image.image?
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 100, height: 150)
                                        .clipped()
                                        .cornerRadius(8)
                                 }
                            )
                            Spacer().frame(height: 12)
                            Text(movie.titleLong)
                        }
                        .frame(width: 100)
                    }
                    .buttonStyle(.plain)
                    .touchFeedback {}
                }
            }
            .padding(.horizontal, 16)
        }
    }
}

struct SuggestedMovies_Previews: PreviewProvider {
    static var previews: some View {
        SuggestedMovies(movies: [moviePreview])
    }
}
