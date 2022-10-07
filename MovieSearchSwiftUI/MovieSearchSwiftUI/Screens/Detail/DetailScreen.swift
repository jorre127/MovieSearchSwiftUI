//
//  DetailScreen.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import SwiftUI

struct DetailScreen: View {
    @StateObject var detailViewModel = DetailViewModel()
    
    let movie: Movie
    
    var body: some View {
        ScrollView{
            VStack (alignment: .leading){
                DetailHeader(movie: movie)
                Text(movie.summary)
                Spacer().frame(height: 24)
                Text("Torrents")
                    .font(.largeTitle)
                    .bold()
                Spacer().frame(height: 8)
                TorrentTable(
                    torrents: movie.torrents,
                    onTorrentTapped: detailViewModel.onTorrentTapped
                )
            }
            .padding(.horizontal, 16)
        }
        .navigationTitle(movie.titleLong)
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(movie: moviePreview)
    }
}
