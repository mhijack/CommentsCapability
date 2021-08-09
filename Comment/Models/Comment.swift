//
//  Comment.swift
//  Comment
//
//  Created by Jack Chen on 2021-05-07.
//

import Foundation

/*
{
  "createdDate" : "2021-04-28T16:54:47.442Z",
  "commentBy" : {
    "firstName" : "IooYmWCEfk",
    "lastName" : "NBoyWyAMyrbN",
    "locked" : false,
    "role" : "MENTOR",
    "picture" : "https://www.github.com",
    "blocked" : false,
    "certified" : false,
    "name" : "SNRmzaPIZiLHsbK",
    "id" : "4028e5987919622f017919678d540a34",
  },
  "repliesCount" : 0,
  "id" : "4028e5987919622f017919678d920a35",
  "content" : "MtYWXPkSAJratQNenN"
}
*/

enum UserRole: String, Codable {
    
    case mentor = "MENTOR"
    case student = "STUDENT"
    case volunteer = "VOLUNTEER" /// This is only used on front-end. If
    case guest = "GUEST"
    case consultant = "CONSULTANT"
    case agencyAdmin = "ORGANIZATION_ADMIN"
    
}

protocol Commentable: Identifiable {
    
    var createdDate: Date { get }
    
    var commentBy: User { get }
    
    var repliesCount: Int { get }
    
    var content: String { get }
    
}

struct Comment: Commentable {
    
    var createdDate: Date
    
    var commentBy: User
    
    var repliesCount: Int
    
    var content: String
    
    var id: String
    
}
