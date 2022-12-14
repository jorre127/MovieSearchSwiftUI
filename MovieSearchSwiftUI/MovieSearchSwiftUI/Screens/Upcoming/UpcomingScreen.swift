//
//  UpcomingScreen.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import SwiftUI

struct UpcomingScreen: View {
    @StateObject var viewModel = UpcomingViewModel()
    
    var body: some View {
        NavigationView{
            if(viewModel.upcomingMovies.isEmpty){
                Text("No Upcoming Movies found")
                    .font(.largeTitle)
                    .bold()
                    .navigationTitle("Upcoming")
            } else {
                List(viewModel.upcomingMovies){ movie in
                    NavigationLink (destination: DetailScreen(movie: movie)){
                        ListItem(
                            title: movie.titleLong,
                            image: movie.mediumCoverImage
                        )
                    }
                }
                .navigationTitle("Upcoming")
            }
        }
    }
}

struct UpcomingScreen_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingScreen()
    }
}
