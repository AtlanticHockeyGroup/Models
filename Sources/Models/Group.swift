//
//  Group.swift
//
//
//  Created by Courtney Perreault on 2024-09-21.
//

import Vapor
import Fluent

public final class Group: Model, Content {
    
    public static let schema = "groups"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "group_name")
    public var groupName: String
    
    @Field(key: "camp_id")
    public var campId: UUID
    
    
    public init(){}
    
    public init(id: UUID? = nil, groupName: String, campId: UUID){
        self.id = id
        self.groupName = groupName
        self.campId = campId
    }
}

