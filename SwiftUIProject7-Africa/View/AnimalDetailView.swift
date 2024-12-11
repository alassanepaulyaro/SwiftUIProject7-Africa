//
//  AnimalDetailView.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 11/12/2024.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                   
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.vertical, 8)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.primary)
                    .lineLimit(0)
                    .background(Color.accentColor
                        .frame(height:6)
                        .offset(y: 24))
                
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in pictures")
                    
                    InsetGalleryView(animal: animal)
                }
                
              
                    
                
            }
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
            
        }
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    NavigationView {
        AnimalDetailView(animal: animals[0])
    }
}
