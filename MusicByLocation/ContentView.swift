//
//  ContentView.swift
//  MusicByLocation
//
//  Created by Ssnehnil Ghosh on 02/03/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var state = StateController()
    
    var body: some View {
        VStack {
            Text(state.lastKnownLocation)
                .padding()
            Spacer()
            Button("Find Music", action: {
                state.findMusic()
            })
        }.onAppear(perform: {
            state.requestAccessToLocationData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
