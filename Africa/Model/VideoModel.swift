//
//  VideoModel.swift
//  Africa
//
//  Created by Halil Usanmaz on 9.07.2022.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String;
    let name: String;
    let headline: String
    
    // COMPUTED PROPERTY
    
    var thumbnail: String {
        "video-\(id)"
    }
}
