//
//  Brand.swift
//  SwiftRide
//
//  Created by Krishala Chhetri on 08/16/2024.
//

import Foundation

struct Brand: Identifiable,Hashable,Codable {
    
    let id: String
    let brandName: String
    let imageName: String
    var carIds: [String]
    
}
