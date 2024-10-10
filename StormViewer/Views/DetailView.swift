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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    NavigationStack {
        DetailView(task: DailyTask.sampleData[0])
    }
}

