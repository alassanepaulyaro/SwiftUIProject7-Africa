//
//  InsetFactView.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 11/12/2024.
//

import SwiftUI

struct InsetFactView: View {
    let animal: Animal

    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")

    InsetFactView(animal: animals[0])
}
