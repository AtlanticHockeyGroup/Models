//
//  Skill.swift
//
//
//  Created by Courtney Perreault on 2024-09-21.
//

import Vapor
import Fluent

public final class Skill: Model, Content{
    
    public static let schema = "skills"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "name")
    public var name: String
    
    public init(){}
    
    public init(id: UUID? = nil, name: String){
        self.id = id
        self.name = name
    }
}
