//
//  TasksView.swift
//  StormViewer
//
//  Created by Huzaifa Jawad on 08/10/2024.
//

import SwiftUI


struct TasksView: View {
    let Tasks: [DailyTask]
    
    var body: some View {
        List(Tasks) { Task in
            CardView(task: Task)
                .listRowBackground(Task.theme.mainColor)
        }
    }
}


struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView(Tasks: DailyTask.sampleData)
    }
}
