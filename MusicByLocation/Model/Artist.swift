//
//  Artist.swift
//  MusicByLocation
//
//  Created by Ssnehnil Ghosh on 03/03/2022.
//

import Foundation

struct Artist: Codable {
    var name: String
    
    private enum CodinKeys: String, CodingKey {
        case name = "artistName"
    }
}
