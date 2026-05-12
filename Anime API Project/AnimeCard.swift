//
//  AnimeCard.swift
//  Anime API Project
//
//  Created by E Blaylock on 4/30/26.
//

import SwiftUI

struct AnimeCard: View {
    let anime: AnimeModel
    
    var body: some View {
        ZStack {
            HStack {
                AsyncImage(url: URL(string: anime.images.jpg.image_url ?? "")) {
                    image in image
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                } placeholder: {
                    ProgressView()
                }
                .frame(height: 140)
                VStack {
                    Text(anime.title_en ?? "")
                        .bold()
                    Text(anime.title_jp ?? "")
                }
            }
        }
        .padding(10)
        .frame(width: 375, height: 150, alignment: .leading)
        .background(.purple.opacity(0.5))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    AnimeCard(
        anime: AnimeModel (
            id: 0,
            title_en: "English Title",
            title_jp: "Japanese Title",
            year: 0,
            synopsis: "Sample Synopsis",
            rating: "TST",
            genres: [GenreModel(name: "Test"), GenreModel(name: "Sample")],
            studios: [StudioModel(name: "Test Studio")],
            images: ImageModel(jpg: JpgModel(image_url: "https://example.com/image.jpg"))
        )
    )
}
