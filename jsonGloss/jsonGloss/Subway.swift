//
//  Subway.swift
//  jsonGloss
//
//  Created by Ayaz Ahmad Tarar on 8/4/16.
//  Copyright © 2016 tarar. All rights reserved.
//


import Foundation
import Gloss

struct Subway:Decodable{
    public let stations : [Station]!
    
    
    
    //MARK: Decodable
    public init?(json: JSON){
        stations = "stations" <~~ json
    }
    
    
    //MARK: Encodable
    public func toJSON() -> JSON? {
        return jsonify([
            "stations" ~~> stations,
            ])
    }
    
}
