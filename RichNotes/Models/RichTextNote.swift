//
//  RichTextNote.swift
//  RichNotes
//
//  Created by Timothy Freebern on 5/4/26.
//

import Foundation
import SwiftData

@Model
class RichTextNote {
    var text: AttributedString
    var createdOn: Date
    var updatedOn: Date
    var category: Category?

    init(
        text: AttributedString,
        createdOn: Date = Date.now,
        updatedOn: Date = Date.now
    ) {
        self.text = text
        self.createdOn = createdOn
        self.updatedOn = updatedOn
    }

    static var sample: RichTextNote = RichTextNote(text: "Some Sample Text")
}
