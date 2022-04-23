//
//  Furniture.swift
//  FurnitureApp
//
//  Created by Monyneath Mol on 23/4/22.
//

import Foundation

enum FurnitureType: String {
    case chair
    case table
    case other
    
}
struct Furniture : Codable {
    var name : String
    var type : String
    var price: Double
    var picture: String?
}

