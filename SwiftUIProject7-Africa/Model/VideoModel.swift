//
//  VideoModel.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 10/12/2024.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String

    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
