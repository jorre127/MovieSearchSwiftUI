//
//  UpcomingViewModel.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import Foundation

class UpcomingViewModel: ObservableObject{
    private let service: WebService
    
    @Published var upcomingMovies: [Movie] = []
    
    init(service: WebService = WebService.shared){
        self.service = service
        getUpcomingMovies()
    }
    
    private func getUpcomingMovies(){
    service.getUpcoming(result: { [weak self] result in
        switch result {
        case .success(let upcomingMovies):
            self?.upcomingMovies = upcomingMovies ?? []
            break
        case .failure(let error):
            print(error)
            break
        }
        })
    }
}

