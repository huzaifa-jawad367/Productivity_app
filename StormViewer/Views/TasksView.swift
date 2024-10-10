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
        NavigationStack {
            List(Tasks) { Task in
                NavigationLink (destination: DetailView(task: Task)) {
                    CardView(task: Task)
                        .listRowBackground(Task.theme.mainColor)
                }
                .listRowBackground(Task.theme.mainColor)
            }
            .navigationTitle("Daily Tasks")
            .toolbar {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Task")
            }
        }
    }
}


struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView(Tasks: DailyTask.sampleData)
    }
}
