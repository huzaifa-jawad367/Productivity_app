//
//  DetailView.swift
//  StormViewer
//
//  Created by Huzaifa Jawad on 10/10/2024.
//

import SwiftUI

struct DetailView: View {
    let task: DailyTask
    
    var body: some View {
        List {
            Section(header: Text("Task Info")) {
                NavigationLink (destination: TaskView()) {
                    Label("Start Task", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(task.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(task.theme.name)
                        .padding(4)
                        .foregroundColor(task.theme.accentColor)
                        .background(task.theme.mainColor)
                        .cornerRadius(4)
                }
                .accessibilityElement(children: .combine)
            }
            
            Section(header: Text("Attendees")) {
                ForEach (task.attendees) { attendee in
                    Label(attendee.name, systemImage: "person")
                }
            }
        }
        .navigationTitle(task.title)
    }
}

#Preview {
    NavigationStack {
        DetailView(task: DailyTask.sampleData[0])
    }
}

