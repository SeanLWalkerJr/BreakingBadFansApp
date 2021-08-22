//
//  Character.swift
//  BreakingBadFansApp
//
//  Created by User 1 on 8/21/21.
//

import Foundation

struct Character : Decodable, Identifiable
{
    var id : String
    var name : String
    var img : String
    var status : String
    var nickname : String
    
    
    enum CodingKeys: String, CodingKey
    {
        case id = "char_id"
        case name = "name"
        case img = "img"
        case status = "status"
        case nickname = "nickname"
    }
    
}
