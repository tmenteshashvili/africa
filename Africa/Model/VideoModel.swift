//
//  VideoModel.swift
//  Africa
//
//  Created by Tako Menteshashvili on 03.08.22.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    
    var thumbnail: String {
        "video-\(id)"
    }
}
