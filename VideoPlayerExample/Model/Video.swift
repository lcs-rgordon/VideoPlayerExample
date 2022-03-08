//
//  Video.swift
//  VideoPlayerExample
//
//  Created by Russell Gordon on 2022-03-08.
//

import Foundation

// The structure must conform to Identifiable to be used with the .fullScreenCover view modifier
struct Video: Identifiable {
    let id = UUID()
    let url: URL
}
