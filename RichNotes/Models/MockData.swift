//
//  MockData.swift
//  RichNotes
//
//  Created by Timothy Freebern on 5/4/26.
//

import SwiftData
import SwiftUI

struct MockData: PreviewModifier {
    func body(content: Content, context: ModelContainer) -> some View {
        content
            .modelContainer(context)
    }

    static func makeSharedContext() async throws -> ModelContainer {
        do {
            let container = try ModelContainer(
                for: Category.self,
                configurations: ModelConfiguration(isStoredInMemoryOnly: true)
            )

            let todo = Category(name: "Todo", hexColor: "0000FF")
            container.mainContext.insert(todo)

            let important = Category(name: "Important", hexColor: "FF0000")
            container.mainContext.insert(important)

            let note = RichTextNote.sample
            important.notes.append(note)

            return container
        } catch {
            fatalError()
        }
    }
}

extension PreviewTrait where T == Preview.ViewTraits {
    static var mockData: Self = .modifier(MockData())
}
