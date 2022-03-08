//
//  BundledVideoView.swift
//  VideoPlayerExample
//
//  Created by Russell Gordon on 2022-03-08.
//

import AVKit    // Required to provide the VideoPlayer view
import SwiftUI

struct BundledVideoView: View {
    
    // Plays a video that is included in the app bundle
    private let player = AVPlayer(url: Bundle.main.url(forResource: "cultivate-to-news-clip", withExtension: "m4v")!)
    
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
            .edgesIgnoringSafeArea([.top, .bottom])
    }
    
}

struct BundledVideoView_Previews: PreviewProvider {
    static var previews: some View {
        BundledVideoView()
    }
}
