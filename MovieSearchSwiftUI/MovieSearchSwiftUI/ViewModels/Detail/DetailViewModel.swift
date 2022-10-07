//
//  DetailViewModel.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import SwiftUI

class DetailViewModel: ObservableObject{
    let service: WebService
    let movie: Movie
    
    @Published var suggestedMovies: [Movie] = []
    
    init (service: WebService = WebService.shared, movie: Movie){
        self.service = service
        self.movie = movie
        getSuggestions()
    }
    
    func onTorrentTapped(urlString: String){
        guard let url = URL(string: urlString) else { return }
        UIApplication.shared.open(url)
    }
    
    private func getSuggestions(){
        service.getSuggestions(movieId: movie.id, result: { [weak self] result in
            switch result {
            case .success(let movies):
                self?.suggestedMovies = movies ?? []
                break
            case .failure(let error):
                print(error)
                break
            }
        })
    }
}
