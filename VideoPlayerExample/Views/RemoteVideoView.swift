//
//  RemoteVideoView.swift
//  VideoPlayerExample
//
//  Created by Russell Gordon on 2022-03-08.
//

import AVKit    // Required to provide the VideoPlayer view
import SwiftUI

struct RemoteVideoView: View {
    
    // Plays a remotely hosted video
    // NOTE: See README file; how and where files are hosted remotely impacts whether this works
    private let player = AVPlayer(url: URL(string: "https://wolverine.raywenderlich.com/content/ios/tutorials/video_streaming/foxVillage.mp4")!)

    var body: some View {
        VideoPlayer(player: player)
            .task {
                // Play when view appears
                player.play()
            }
            .onDisappear {
                // Stop when view disappears
                player.pause()
            }
            // Ensure there are not white bars above and below the VideoPlayer view
            // NOTE: This gets tricky with videos in portrait orientation as they will interfere with the navigation area.
            .edgesIgnoringSafeArea([.top, .bottom])
    }
    
}

struct RemoteVideoView_Previews: PreviewProvider {
    static var previews: some View {
        RemoteVideoView()
    }
}
