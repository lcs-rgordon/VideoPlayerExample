//
//  ContentView.swift
//  VideoPlayerExample
//
//  Created by Russell Gordon on 2022-03-08.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 20) {
            
            NavigationLink(destination: RemoteVideoView()) {
                Text("Play remote video")
            }

            NavigationLink(destination: BundledVideoView()) {
                Text("Play bundled local video")
            }

        }
        .navigationTitle("Video Player Example")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
