//
//  ApiInfoView.swift
//  Anime API Project
//
//  Created by E Blaylock on 5/3/26.
//

import SwiftUI

struct ApiInfoView: View {
    var body: some View {
        ZStack {
            Image(.cherryStreet)
            
            VStack {
                Text("API Info")
                    .font(.largeTitle.bold())
                    .padding()
                Text("Jikan REST API")
                Text("https://docs.api.jikan.moe/#/anime")
                Text("Emma Blaylock")
            }
            .padding()
            .background(.white.opacity(0.7))
            .cornerRadius(20)
        }
    }
}

#Preview {
    ApiInfoView()
}
