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
                
              Group {
                  HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                  
                  InsetFactView(animal: animal)
                }
              .padding(.horizontal)
                
                
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                Group {
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    
                    InsetMapView()
                }
                    
                
                Group {
                    HeadingView(headingImage: "book.vertical", headingText: "Learn More")
                    
                    ExternalWeblinkView(animal: animal)
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
