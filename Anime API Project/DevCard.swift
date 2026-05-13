//
//  DevCard.swift
//  Anime API Project
//
//  Created by E Blaylock on 5/12/26.
//

import SwiftUI

struct DevCard: View {
    let developer: Developer
    var body: some View {
        ZStack {
            HStack {
                Image(systemName: developer.symbol)
                    .font(.largeTitle)
                VStack {
                    Text(developer.rawValue)
                        .font(.title2.bold())
                    Text(developer.name)
                        .font(.largeTitle)
                }
            }
        }
        .padding(10)
        .frame(width: 300, height: 100)
        .background(.purple.opacity(0.5))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    DevCard(developer: .frontEnd)
}
