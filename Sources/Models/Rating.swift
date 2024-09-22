//
//  File.swift
//  
//
//  Created by Courtney Perreault on 2024-09-21.
//

import Vapor
import Fluent

public final class Rating: Model, Content{
    
    public static let schema = "ratings"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "player_id")
    public var playerId: UUID
    
    @Field(key: "skill_id")
    public var skillId: UUID
    
    @Field(key: "value")
    public var value: Int
    
    @Field(key: "notes")
    public var notes: String
    
    public init(){}
    
    public init(id: UUID? = nil, playerId: UUID, skillId: UUID, value: Int, notes: String){
        self.id = id
        self.playerId = playerId
        self.skillId = skillId
        self.value = value
        self.notes = notes
    }
}