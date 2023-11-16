//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Peter on 16/11/2023.
//

import SwiftUI

struct DetailEditView: View {
    @State private var emptyScrum = DailyScrum.emptyScrum
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $emptyScrum.title)
                HStack {
                    Slider(value: $emptyScrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    Spacer()
                    Text("\(emptyScrum.lengthInMinutes) minutes")
                }
            }
        }
    }
}

#Preview {
    DetailEditView()
}
