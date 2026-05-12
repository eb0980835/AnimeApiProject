//
//  AnimeViewModel.swift
//  Anime API Project
//
//  Created by E Blaylock on 4/27/26.
//

import SwiftUI
import Combine

class AnimeViewModel: ObservableObject {
    @Published var animeList: [AnimeModel] = []
    
    func fetchAnimeData() {
        guard let url = URL(string: "https://api.jikan.moe/v4/anime") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Request failed: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else {
                print("No data returned")
                return
            }
            
            do {
                let anime = try JSONDecoder().decode(DataModel.self, from: data)
                DispatchQueue.main.async {
                    self.animeList = anime.data
                }
            } catch {
                print("Decoding failed: \(error)")
            }
        }.resume()
    }
}
