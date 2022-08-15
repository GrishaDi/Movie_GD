//
//  Movie.swift
//  Movie
//
//  Created by Grisha Diehl on 11.08.2022.
//

import Foundation

struct SiteResponse: Codable {
    let results: [Film]
}

struct Film: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let vote_average: Double
    //Popular Movies  
    let release_date: String?
    let popularity: Double?
    let title: String?
    //Popular Series
    let first_air_date: String?
    
}
