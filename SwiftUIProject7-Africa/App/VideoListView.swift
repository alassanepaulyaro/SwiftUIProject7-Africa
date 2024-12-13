//
//  VideoListView.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 09/12/2024.
//

import SwiftUI

struct VideoListView: View {

    @State var videos: [Video] = Bundle.main.decode("videos.json")

    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)

    var body: some View {
        NavigationView {
            List(videos) { item in
                NavigationLink(
                    destination: VideoPlayerView(
                        videoSelected: item.id, videoTitle: item.name)
                ) {
                    VideoListItemView(video: item)
                        .padding(.vertical, 8)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }
                    ) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }
    }
}

#Preview {
    VideoListView()
}
