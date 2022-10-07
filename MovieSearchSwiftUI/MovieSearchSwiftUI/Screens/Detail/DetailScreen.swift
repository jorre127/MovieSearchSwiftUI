//
//  DetailScreen.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import SwiftUI

struct DetailScreen: View {
    @StateObject private var viewModel: DetailViewModel
    
    init(movie: Movie) {
        _viewModel = StateObject(wrappedValue: DetailViewModel(movie: movie))
    }
    
    var body: some View {
        ScrollView{
            VStack (alignment: .leading){
                VStack (alignment: .leading){
                    DetailHeader(movie: viewModel.movie)
                    Text(viewModel.movie.summary)
                    Spacer().frame(height: 24)
                    Text("Torrents")
                        .font(.largeTitle)
                        .bold()
                    Spacer().frame(height: 8)
                    TorrentTable(
                        torrents: viewModel.movie.torrents,
                        onTorrentTapped: viewModel.onTorrentTapped
                    )
                    Spacer().frame(height: 24)
                    Text("Suggested")
                        .font(.largeTitle)
                        .bold()
                    Spacer().frame(height: 8)
                }
                .padding(.horizontal, 16)
                SuggestedMovies(movies: viewModel.suggestedMovies)
                
            }
        }
        .navigationTitle(viewModel.movie.titleLong)
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(movie: moviePreview)
    }
}
