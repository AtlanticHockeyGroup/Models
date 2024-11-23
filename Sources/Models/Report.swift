//
//  Report.swift
//
//
//  Created by Courtney Perreault on 2024-09-22.
//

import Vapor
import Fluent

public final class Report: Model, Content {
    
    public static let schema = "reports"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "player_id")
    public var playerId: UUID
    
    @Field(key: "ratings")
    public var ratings: [UUID]
    
    @Field(key: "comments")
    public var comments: String
    
    public init(){}
    
    public init(id: UUID? = nil, playerId: UUID, ratings: [UUID], comments: String){
        self.id = id
        self.playerId = playerId
        self.ratings = ratings
        self.comments = comments
    }
}
