//
//	Torrent.swift
//
//	Create by UserX on 4/8/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

//	The "Swift - Struct - Gloss" support has been made available by CodeEagle
//	More about him/her can be found at his/her website: https://github.com/CodeEagle

import Foundation
import Gloss

//MARK: - Torrent
public struct Torrent: Glossy {
    
    public let dateUploaded : String!
    public let dateUploadedUnix : Int!
    public let hash : String!
    public let peers : Int!
    public let quality : String!
    public let seeds : Int!
    public let size : String!
    public let sizeBytes : Int!
    public let url : String!
    
    
    
    //MARK: Decodable
    public init?(json: JSON){
        dateUploaded = "date_uploaded" <~~ json
        dateUploadedUnix = "date_uploaded_unix" <~~ json
        hash = "hash" <~~ json
        peers = "peers" <~~ json
        quality = "quality" <~~ json
        seeds = "seeds" <~~ json
        size = "size" <~~ json
        sizeBytes = "size_bytes" <~~ json
        url = "url" <~~ json
    }
    
    
    //MARK: Encodable
    public func toJSON() -> JSON? {
        return jsonify([
            "date_uploaded" ~~> dateUploaded,
            "date_uploaded_unix" ~~> dateUploadedUnix,
            "hash" ~~> hash,
            "peers" ~~> peers,
            "quality" ~~> quality,
            "seeds" ~~> seeds,
            "size" ~~> size,
            "size_bytes" ~~> sizeBytes,
            "url" ~~> url,
            ])
    }
    
}