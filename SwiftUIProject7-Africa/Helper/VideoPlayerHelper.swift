//
//  VideoPlayerHelper.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 12/12/2024.
//

import AVKit
import Foundation

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {

    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil
    {
        videoPlayer = AVPlayer(
            url: Bundle.main.url(
                forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
