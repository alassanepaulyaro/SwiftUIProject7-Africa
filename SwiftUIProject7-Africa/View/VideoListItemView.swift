//
//  VideoListItemView.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 11/12/2024.
//

import SwiftUI

struct VideoListItemView: View {
    let video: Video

    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)

                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }

            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)

                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }
    }
}

#Preview {
    let videos: [Video] = Bundle.main.decode("videos.json")
    VideoListItemView(video: videos.first!)
}
