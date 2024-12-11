//
//  AnimalListItemView.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 10/12/2024.
//

import SwiftUI

struct AnimalListItemView: View {

    let animal: Animal

    var body: some View {
        HStack {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))

            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 0)
            }
        }
    }
}

#Preview {

    let animals: [Animal] = Bundle.main.decode("animals.json")

    AnimalListItemView(animal: animals[1])
}
