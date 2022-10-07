//
//  SearchViewModel.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import Foundation

class SearchViewModel: ObservableObject {
    private let service: WebService
    
    @Published var searchValue = ""
    @Published var movies: [Movie] = []
    
    init(service: WebService = WebService.shared ){
        self.service = service
        getMovies()
    }
    
    private func getMovies(){
        service.searchMovies(title: searchValue, result: { [weak self] result in
            switch result {
            case .success(let movies):
                self?.movies = movies ?? []
                break
            case .failure(let error):
                print(error)
                break
            }
        })
    }
}
