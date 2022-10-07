//
//  MoviePreview.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import Foundation

let moviePreview = Movie(
    id: 1,
    url: "",
    imdbCode: "12",
    title: "Good Movie",
    titleLong: "Very good movie",
    year: 2012,
    rating: 6,
    runtime: 60,
    genres: ["Action", "Comedy"],
    summary: "There once was a boy who was a boy who was a boy who was a boy who was a boy",
    backgroundImage: "",
    smallCoverImage: "",
    mediumCoverImage: "",
    largeCoverimage: "",
    torrents: [torrentPreview]
)

let torrentPreview = Torrent(
    url: "",
    quality: "480p",
    seeds: 12,
    peers: 10,
    size: "50gb",
    dateUploaded: "12/2/2020"
)
