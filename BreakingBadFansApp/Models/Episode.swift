//
//  Episode.swift
//  BreakingBadFansApp
//
//  Created by User 1 on 8/21/21.
//

import Foundation

struct Episode : Identifiable, Decodable
{
    var id : Int
    var title : String
    var season : String
    var episode : String
    
    enum CodingKeys: String, CodingKey
    {
        case id = "episode_id"
        case title = "title"
        case season = "season"
        case episode = "episode"
        
    }
}
