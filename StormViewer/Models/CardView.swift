//
//  CardView.swift
//  StormViewer
//
//  Created by Huzaifa Jawad on 10/2/24.
//

import SwiftUI

struct CardView: View {
    let task: DailyTask
    var body: some View {
        VStack(alignment: .leading) {
            Text(task.title)
                .font(.headline)
//            Text(task.theme.rawValue)
            Spacer()
            HStack {
                Label("\(task.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(task.lengthInMinutes)", systemImage: "clock")
                    .padding(.trailing, 20)

            }.font(.caption)
        }
        .padding()
        .foregroundColor(task.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var task = DailyTask.sampleData[0]
    static var previews: some View {
        CardView(task: task)
            .background(task.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
