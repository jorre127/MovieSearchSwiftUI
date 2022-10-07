//
//  MainScreen.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        TabView{
            SearchScreen()
                .tabItem {
                    Label("Search", systemImage: Icons.search.rawValue)
                }
            UpcomingScreen()
                .tabItem {
                    Label("Upcoming", systemImage: Icons.upcoming.rawValue)
                }
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
