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
    
    @Field(key: "name_en")
    public var nameEn: String
    
    @Field(key: "name_fr")
    public var nameFr: String
    
    public init(){}
    
    public init(id: UUID? = nil, nameEn: String, nameFr: String){
        self.id = id
        self.nameEn = nameEn
        self.nameFr = nameFr
    }
}
