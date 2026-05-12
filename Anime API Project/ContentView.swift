//
//  ContentView.swift
//  Anime API Project
//
//  Created by E Blaylock on 4/27/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = AnimeViewModel()
    @State var selectedAnime: AnimeModel? = nil
    
    var body: some View {
        TabView {
            NavigationStack {
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: Array(repeating: GridItem(), count: 1)) {
                            ForEach(viewModel.animeList) { anime in
                                AnimeCard(anime: anime)
                                    .onTapGesture {
                                        selectedAnime = anime
                                    }
                            }
                        }
                    }
                }
                .padding()
                .navigationTitle("Browse")
            }.tabItem {
                Label("Browse", systemImage: "character.book.closed")
            }
            DevInfoView().tabItem {
                Label("Developer", systemImage: "person.2")
            }
            ApiInfoView().tabItem {
                Label("API Info", systemImage: "chart.bar.horizontal.page.fill")
            }
        }.fullScreenCover(item: $selectedAnime, content: {anime in DetailView(anime:anime)
            
        })
        .onAppear {
            viewModel.fetchAnimeData()
        }
    }
}

#Preview {
    ContentView()
}
