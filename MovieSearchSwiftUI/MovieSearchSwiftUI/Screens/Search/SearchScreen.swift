//
//  ContentView.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import SwiftUI

struct SearchScreen: View {
    @StateObject private var viewModel = SearchViewModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.movies){ movie in
                NavigationLink (destination: DetailScreen(movie: movie)){
                    SearchListItem(
                        title: movie.titleLong,
                        image: movie.mediumCoverImage
                    )
                }
            }
            .navigationTitle("Search")
        }
        .searchable(text: $viewModel.searchValue){}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchScreen()
    }
}
