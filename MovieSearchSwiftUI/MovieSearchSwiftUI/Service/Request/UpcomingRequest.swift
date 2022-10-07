//
//  UpcomingRequest.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import Foundation
import Cara

public struct upcomingRequest: Request {
    public var url: URL? { return URL(string: "list_upcoming.json") }
    
    public var method: RequestMethod { return .get }
}
