//
//  DevInfoView.swift
//  Anime API Project
//
//  Created by E Blaylock on 4/27/26.
//

import SwiftUI

struct DevInfoView: View {
    var body: some View {
        ZStack {
            Image(.cherryStreet)
            VStack {
                Text("Cornucopia Productions")
                    .font(.largeTitle.bold())
                Image(.cornucopia)
                    .resizable()
                    .scaledToFit()
                LazyVGrid(columns: Array(repeating: GridItem(), count: 1)) {
                    ForEach(Developer.allCases) {
                        dev in DevCard(developer: dev)
                    }
                }
            }
            .padding()
            .frame(width: 375)
            .background(.white.opacity(0.7))
            .cornerRadius(20)
        }
    }
}

#Preview {
    DevInfoView()
}
