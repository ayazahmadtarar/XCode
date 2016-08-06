//
//	Station.swift
//
//	Create by UserX on 4/8/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

//	The "Swift - Struct - Gloss" support has been made available by CodeEagle
//	More about him/her can be found at his/her website: https://github.com/CodeEagle

import Foundation
import Gloss

//MARK: - Station
public struct Station: Glossy {
    
    public let buildYear : String!
    public let stationName : String!
    
    
    
    //MARK: Decodable
    public init?(json: JSON){
        buildYear = "buildYear" <~~ json
        stationName = "stationName" <~~ json
    }
    
    
    //MARK: Encodable
    public func toJSON() -> JSON? {
        return jsonify([
            "buildYear" ~~> buildYear,
            "stationName" ~~> stationName,
            ])
    }
    
}