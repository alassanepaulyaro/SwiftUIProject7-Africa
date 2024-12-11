//
//  CoverImageIView.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 10/12/2024.
//

import SwiftUI

struct CoverImageIView: View {

    let CoverImages: [CoverImage] = Bundle.main.decode("covers.json")
    var body: some View {
        TabView {
            ForEach(CoverImages) {
                item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    CoverImageIView()
}
