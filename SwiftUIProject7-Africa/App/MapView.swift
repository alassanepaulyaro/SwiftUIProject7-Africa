//
//  MapView.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 09/12/2024.
//

import MapKit
import SwiftUI

struct MapView: View {
    @State private var cameraPosition = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 6.600286, longitude: 16.43775599),
            span: MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        )
    )

    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")

    var body: some View {
        Map(position: $cameraPosition) {
            ForEach(locations, id: \.id) { item in
                Annotation("Location \(item.id)", coordinate: item.location) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32, alignment: .center)
                }
            }
        }
    }
}

#Preview {
    MapView()
}
