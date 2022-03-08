//
//  ContentView.swift
//  VideoPlayerExample
//
//  Created by Russell Gordon on 2022-03-08.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    // List of mixed remote and local/bundled videos
    let availableVideos: [Video] = [
        
        Video(url: URL(string: "https://wolverine.raywenderlich.com/content/ios/tutorials/video_streaming/foxVillage.mp4")!),
        
        Video(url: Bundle.main.url(forResource: "cultivate-to-news-clip", withExtension: "m4v")!)
        
    ]
    
    // Which of the two videos is selected
    @State private var selectedVideo: Video?
    
    var body: some View {
        VStack(spacing: 20) {
            
            NavigationLink(destination: RemoteVideoView()) {
                Text("Play remote video on separate page")
            }
            
            NavigationLink(destination: BundledVideoView()) {
                Text("Play bundled local video on separate page")
            }
            
            Button(action: {
                selectedVideo = availableVideos[0]
            }, label: {
                Text("Play remote video directly on this page")
            })

            Button(action: {
                selectedVideo = availableVideos[1]
            }, label: {
                Text("Play local video directly on this page")
            })

        }
        // Show the selected video in full screen mode
        .fullScreenCover(item: $selectedVideo, content: { item in

            // Make the AVPlayer instance using the provided url
            let player = AVPlayer(url: item.url)
            
            VideoPlayer(player: player)
                .edgesIgnoringSafeArea(.all)
                .onAppear {
                    player.play()
                }

        })
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
