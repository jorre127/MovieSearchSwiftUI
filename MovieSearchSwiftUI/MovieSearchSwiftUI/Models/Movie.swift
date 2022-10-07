//
//  Photo.swift
//  unsplash_beta
//
//  Created by Hannes Van den Berghe on 29/09/2022.
//

import Foundation

public struct ApiResponse: Codable {
    let status: String
    let statusMessage: String
    let data: MovieResponse
    
    enum CodingKeys: String, CodingKey {
        case status
        case statusMessage = "status_message"
        case data
    }
}

public struct MovieResponse: Codable {
    let movieCount: Int
    let movies : [Movie]?
    
    enum CodingKeys: String, CodingKey {
        case movieCount = "movie_count"
        case movies
    }
}

public struct Movie: Codable, Identifiable{
    public var id: Int
    let url: String
    let imdbCode: String
    let title: String
    let titleLong: String
    let year: Int
    let rating: Double
    let runtime: Int
    let genres: [String]
    let summary: String
    let backgroundImage: String
    let smallCoverImage: String
    let mediumCoverImage: String
    let largeCoverimage: String?
    let torrents: [Torrent]
    
    enum CodingKeys: String, CodingKey {
        case id
        case url
        case imdbCode = "imdb_code"
        case title
        case titleLong = "title_long"
        case year
        case rating
        case runtime
        case genres
        case summary
        case backgroundImage = "background_image"
        case smallCoverImage = "small_cover_image"
        case mediumCoverImage = "medium_cover_image"
        case largeCoverimage = "large_cover_image"
        case torrents
    }
    
}

public struct Torrent: Codable, Identifiable {
    public var id = UUID()
    let url: String
    let quality: String
    let seeds: Int
    let peers: Int
    let size: String
    let dateUploaded: String

    enum CodingKeys: String, CodingKey {
        case url
        case quality
        case seeds
        case peers
        case size
        case dateUploaded = "date_uploaded"
    }
}
