//
//  User.swift
//  Comment
//
//  Created by Jack Chen on 2021-05-10.
//

import Foundation

protocol UserProtocol: Identifiable {
    
    var firstName: String { get }
    
    var lastName: String { get }
    
    var picture: URL { get }
    
    var role: UserRole { get }
    
}

struct User: UserProtocol {
    
    let role: UserRole
    
    var id: String
    
    var firstName: String
    
    var lastName: String
    
    var picture: URL
    
}

protocol ShortUserProtocol: UserProtocol {
    
    var locked: Bool { get }
    
    var blocked: Bool { get }
    
    
    
}

struct ShortUser: ShortUserProtocol {
    
    
    
}
