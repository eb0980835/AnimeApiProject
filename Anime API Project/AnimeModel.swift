//
//  AnimeModel.swift
//  Anime API Project
//
//  Created by E Blaylock on 4/27/26.
//

import Foundation

struct AnimeModel: Identifiable, Decodable {
    var id: Int
    let title_en: String?
    let title_jp: String?
    let year: Int?
    let synopsis: String?
    let rating: String?
    let genres: [GenreModel]
    let studios: [StudioModel]
    let images: ImageModel
    
    enum CodingKeys: String, CodingKey {
        case id = "mal_id"
        case title_en = "title_english"
        case title_jp = "title_japanese"
        case year
        case synopsis
        case rating
        case genres
        case studios
        case images
    }
}
