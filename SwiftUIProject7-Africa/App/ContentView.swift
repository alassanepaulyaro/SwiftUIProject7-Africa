//
//  ContentView.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 09/12/2024.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")

        NavigationView {
            List {
                CoverImageIView()
                    .frame(height: 300)
                    .listRowInsets(
                        EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    }
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)
        }
    }
}

#Preview {
    ContentView()
}
