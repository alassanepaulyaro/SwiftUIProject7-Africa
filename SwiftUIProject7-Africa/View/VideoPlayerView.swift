//
//  VideoPlayerView.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 12/12/2024.
//

import AVKit
import SwiftUI

struct VideoPlayerView: View {

    var videoSelected: String
    var videoTitle: String

    var body: some View {
        VStack {
            VideoPlayer(
                player: playVideo(fileName: videoSelected, fileFormat: "mp4")
            )
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8), alignment: .topTrailing
            )
        }
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)

    }
}

#Preview {
    NavigationView {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
