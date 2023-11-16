//
//  Themes.swift
//  Scrumdinger
//
//  Created by Peter on 15/11/2023.
//

import SwiftUI

enum Theme: String, CaseIterable, Identifiable {
    var id: String {
        name
    }
    
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    var mainColor: Color {
        switch self {
        case .bubblegum:
            return Color.pink // Use the actual color you want for 'bubblegum'
        case .buttercup:
            return Color.yellow // Assuming 'buttercup' is a shade of yellow
        case .indigo:
            return Color.indigo
        case .lavender:
            return Color.purple // Adjust if 'lavender' is a different shade
        case .magenta:
            return Color.blue
        case .navy:
            return Color.blue // Adjust if 'navy' is a specific shade of blue
        case .orange:
            return Color.orange
        case .oxblood:
            return Color.red // Replace with the actual color for 'oxblood'
        case .periwinkle:
            return Color.blue // Adjust for the 'periwinkle' shade
        case .poppy:
            return Color.red // Adjust for the 'poppy' shade
        case .purple:
            return Color.purple
        case .seafoam:
            return Color.green // Adjust for the 'seafoam' shade
        case .sky:
            return Color.blue // Adjust for the 'sky' shade
        case .tan:
            return Color.brown // Adjust for the 'tan' shade
        case .teal:
            return Color.green // Adjust for the 'teal' shade
        case .yellow:
            return Color.yellow
        }
    }
    var name: String {
        rawValue.capitalized
    }
}
