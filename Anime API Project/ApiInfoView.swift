//
//  ApiInfoView.swift
//  Anime API Project
//
//  Created by E Blaylock on 5/3/26.
//

import SwiftUI

struct ApiInfoView: View {
    var body: some View {
        VStack {
            Text("API Info")
                .font(.largeTitle.bold())
            Text("Jikan REST API")
            Text("https://docs.api.jikan.moe/#/anime")
            Text("Emma Blaylock")
        }
    }
}

#Preview {
    ApiInfoView()
}
