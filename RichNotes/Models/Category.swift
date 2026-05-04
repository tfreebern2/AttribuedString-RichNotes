//
//  Category.swift
//  RichNotes
//
//  Created by Timothy Freebern on 5/4/26.
//

import Foundation
import SwiftData

@Model
class Category {
    @Attribute(.unique)
    var name: String
    var hexColor: String
    
    @Relationship(deleteRule: .nullify)
    var notes: [RichTextNote] = []
    
    init(name: String, hexColor: String) {
        self.name = name
        self.hexColor = hexColor
    }
    
    static var all = "All Categories"
    
    static var uncategorized = "Uncategorized"
}
