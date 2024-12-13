//
//  ExternalWeblinkView.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 11/12/2024.
//

import SwiftUI

struct ExternalWeblinkView: View {
    let animal: Animal

    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()

                Group {
                    Image(systemName: "arrow.up.right.square")

                    Link(
                        animal.name,
                        destination: (URL(string: animal.link)
                            ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }
        }  
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    ExternalWeblinkView(animal: animals[1])
}
