//
//  SuggestionsRequest.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import Foundation
import Cara

public struct SuggestionsRequest: Request {
    let id : Int
    
    init (id: Int) { self.id = id }
    
    public var url: URL? { return URL(string: "movie_suggestions.json?movie_id=\(id)") }
    
    public var method: RequestMethod { return .get }
}
