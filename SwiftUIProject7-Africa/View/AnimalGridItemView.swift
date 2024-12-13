//
//  AnimalGridItemView.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 13/12/2024.
//

import SwiftUI

struct AnimalGridItemView: View {
    let animal: Animal

    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {

    let animals: [Animal] = Bundle.main.decode("animals.json")
    AnimalGridItemView(animal: animals[1])
}
