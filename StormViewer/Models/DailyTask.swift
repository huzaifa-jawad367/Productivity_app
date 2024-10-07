//
//  DailyTask.swift
//  StormViewer
//
//  Created by Huzaifa Jawad on 10/2/24.
//

import Foundation


struct DailyTask {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
}


extension DailyTask {
    static let sampleData: [DailyTask] =
    [
        DailyTask(title: "Design",
                   attendees: ["Cathy", "Daisy", "Simon", "Jonathan"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        DailyTask(title: "App Dev",
                   attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"],
                   lengthInMinutes: 5,
                   theme: .orange),
        DailyTask(title: "Web Dev",
                   attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"],
                   lengthInMinutes: 5,
                   theme: .poppy)
    ]
}
