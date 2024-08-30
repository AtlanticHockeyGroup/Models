//
//  Player.swift
//
//
//  Created by Courtney Perreault on 2024-08-28.
//

import Vapor
import Fluent

public final class Player: Model, Content{
    
    public static let schema = "players"
    
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "first_name")
    public var firstName: String
    
    @Field(key: "last_name")
    public var lastName: String
    
    public init(){
        
    }
    
    public init(id: UUID? = nil, firstName: String, lastName: String){
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
    }
}
