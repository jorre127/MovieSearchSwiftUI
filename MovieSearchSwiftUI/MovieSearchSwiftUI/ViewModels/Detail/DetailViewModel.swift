//
//  DetailViewModel.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import SwiftUI

class DetailViewModel: ObservableObject{
    
    func onTorrentTapped(urlString: String){
        guard let url = URL(string: urlString) else { return }
        UIApplication.shared.open(url)
    }
}
