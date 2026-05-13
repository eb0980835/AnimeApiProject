//
//  Developer.swift
//  Anime API Project
//
//  Created by E Blaylock on 5/12/26.
//

enum Developer: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    
    case projectManager = "Project Manager"
    case frontEnd = "Front End"
    case backEnd = "Back End"
    
    var name: String {
        switch self {
        case .projectManager:
            "Kora Copia"
        case .frontEnd:
            "Nora Copia"
        case .backEnd:
            "Zora Copia"
        }
    }
    
    var symbol: String {
        switch self {
        case .projectManager:
            return "clipboard.fill"
        case .frontEnd:
            return "iphone"
        case .backEnd:
            return "folder.fill"
        }
    }
}
