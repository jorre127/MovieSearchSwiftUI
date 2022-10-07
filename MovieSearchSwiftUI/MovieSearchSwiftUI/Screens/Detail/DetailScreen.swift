//
//  DetailScreen.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import SwiftUI

struct DetailScreen: View {
    let movie: Movie
    
    var body: some View {
        ScrollView{
            DetailHeader(image: movie.largeCoverimage)
            Text(movie.summary)
        }
        .padding(.horizontal, 16)
        .navigationTitle(movie.titleLong)
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(movie: moviePreview)
    }
}
