//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Peter on 15/11/2023.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack (alignment: .leading) {
                    Text ("Seconds Elapsed")
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack (alignment: .trailing) {
                    Text ("Seconds Remaining")
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            Circle()
                .strokeBorder(lineWidth: 24)
        }
    }
}

#Preview {
    MeetingView()
}
