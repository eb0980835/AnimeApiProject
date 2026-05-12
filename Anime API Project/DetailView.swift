//
//  DetailView.swift
//  Anime API Project
//
//  Created by E Blaylock on 5/11/26.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) var dismiss
    let anime: AnimeModel
    
    var body: some View {
        ScrollView {
            VStack {
                Button(action: {dismiss()}) {
                    Text("Back")
                        .foregroundStyle(.white)
                        .padding()
                        .background(.purple)
                        .cornerRadius(10)
                }
                Text(anime.title_en ?? "")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                Text(anime.title_jp ?? "")
                    .font(.title)
                    .multilineTextAlignment(.center)
                Text(String(anime.year ?? 0))
                AsyncImage(url: URL(string: anime.images.jpg.image_url ?? "")) {
                    image in image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .frame(height: 300)
                Text("Rating: \(anime.rating ?? "N/A")")
                Text("Genre(s): \(anime.genres.map(\.name).joined(separator: ", "))")
                    .multilineTextAlignment(.center)
                Text("Studio(s): \(anime.studios.map(\.name).joined(separator: ", "))")
                    .multilineTextAlignment(.center)
                Text(anime.synopsis ?? "")
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(.purple.opacity(0.3))
                    .cornerRadius(10)
            }
        }
        .padding(10)
    }
}

#Preview {
    DetailView(
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
