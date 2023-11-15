//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Peter on 15/11/2023.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack{
            List(scrums) { scrum in
                NavigationLink (destination: Text(scrum.title)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily scrums")
            .toolbar {
                Button (action: {}) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
