//
//	Movy.swift
//
//	Create by UserX on 4/8/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

//	The "Swift - Struct - Gloss" support has been made available by CodeEagle
//	More about him/her can be found at his/her website: https://github.com/CodeEagle

import Foundation
import Gloss

//MARK: - Movy
public struct Movie: Glossy {
    
    public let backgroundImage : String!
    public let backgroundImageOriginal : String!
    public let dateUploaded : String!
    public let dateUploadedUnix : Int!
    public let descriptionFull : String!
    public let genres : [String]!
    public let id : Int!
    public let imdbCode : String!
    public let language : String!
    public let largeCoverImage : String!
    public let mediumCoverImage : String!
    public let mpaRating : String!
    public let rating : Float!
    public let runtime : Int!
    public let slug : String!
    public let smallCoverImage : String!
    public let state : String!
    public let summary : String!
    public let synopsis : String!
    public let title : String!
    public let titleEnglish : String!
    public let titleLong : String!
    public let torrents : [Torrent]!
    public let url : String!
    public let year : Int!
    public let ytTrailerCode : String!
    
    
    
    //MARK: Decodable
    public init?(json: JSON){
        backgroundImage = "background_image" <~~ json
        backgroundImageOriginal = "background_image_original" <~~ json
        dateUploaded = "date_uploaded" <~~ json
        dateUploadedUnix = "date_uploaded_unix" <~~ json
        descriptionFull = "description_full" <~~ json
        genres = "genres" <~~ json
        id = "id" <~~ json
        imdbCode = "imdb_code" <~~ json
        language = "language" <~~ json
        largeCoverImage = "large_cover_image" <~~ json
        mediumCoverImage = "medium_cover_image" <~~ json
        mpaRating = "mpa_rating" <~~ json
        rating = "rating" <~~ json
        runtime = "runtime" <~~ json
        slug = "slug" <~~ json
        smallCoverImage = "small_cover_image" <~~ json
        state = "state" <~~ json
        summary = "summary" <~~ json
        synopsis = "synopsis" <~~ json
        title = "title" <~~ json
        titleEnglish = "title_english" <~~ json
        titleLong = "title_long" <~~ json
        torrents = "torrents" <~~ json
        url = "url" <~~ json
        year = "year" <~~ json
        ytTrailerCode = "yt_trailer_code" <~~ json
    }
    
    
    //MARK: Encodable
    public func toJSON() -> JSON? {
        return jsonify([
            "background_image" ~~> backgroundImage,
            "background_image_original" ~~> backgroundImageOriginal,
            "date_uploaded" ~~> dateUploaded,
            "date_uploaded_unix" ~~> dateUploadedUnix,
            "description_full" ~~> descriptionFull,
            "genres" ~~> genres,
            "id" ~~> id,
            "imdb_code" ~~> imdbCode,
            "language" ~~> language,
            "large_cover_image" ~~> largeCoverImage,
            "medium_cover_image" ~~> mediumCoverImage,
            "mpa_rating" ~~> mpaRating,
            "rating" ~~> rating,
            "runtime" ~~> runtime,
            "slug" ~~> slug,
            "small_cover_image" ~~> smallCoverImage,
            "state" ~~> state,
            "summary" ~~> summary,
            "synopsis" ~~> synopsis,
            "title" ~~> title,
            "title_english" ~~> titleEnglish,
            "title_long" ~~> titleLong,
            "torrents" ~~> torrents,
            "url" ~~> url,
            "year" ~~> year,
            "yt_trailer_code" ~~> ytTrailerCode,
            ])
    }
    
    
    
    
}