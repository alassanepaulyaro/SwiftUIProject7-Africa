//
//  CreditsView.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 13/12/2024.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)

            Text(
                """
                Copyright © Yaro Paul
                All right reserved
                """
            )
            .font(.footnote)
            .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
}

#Preview {
    CreditsView()
}
