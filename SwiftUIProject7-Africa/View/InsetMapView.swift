//
//  InsetMapView.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 11/12/2024.
//

import MapKit
import SwiftUI

struct InsetMapView: View {

    @State private var region = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 6.600286, longitude: 16.4377599),
            span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0)
        ))

    var body: some View {
        Map(position: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.accentColor)
                            .imageScale(.large)

                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                }
                .padding(12), alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(12)
    }
}

#Preview {
    InsetMapView()
}
