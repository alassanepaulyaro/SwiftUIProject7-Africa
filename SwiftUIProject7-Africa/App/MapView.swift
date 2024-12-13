//
//  MapView.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 09/12/2024.
//

import MapKit
import SwiftUI

struct MapView: View {
    @State private var region = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 6.600286, longitude: 16.43775599),
            span: MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        )
    )

    @State private var currentCenterCoordinate = CLLocationCoordinate2D(
        latitude: 6.600286, longitude: 16.43775599)

    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")

    var body: some View {
        Map(position: $region) {
            ForEach(locations, id: \.id) { item in
                Annotation("Location \(item.id)", coordinate: item.location) {
                    MapAnnotationView(location: item)
                }
            }
        }
        .onMapCameraChange { mapCameraUpdateContext in
            currentCenterCoordinate =
                mapCameraUpdateContext.camera.centerCoordinate
        }
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 50)
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text(
                            String(
                                format: "%.5f",
                                currentCenterCoordinate.latitude
                            )
                        )
                        .font(.footnote)
                        .foregroundColor(.white)
                    }
                    Divider()

                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text(
                            String(
                                format: "%.5f",
                                currentCenterCoordinate.longitude)
                        )
                        .font(.footnote)
                        .foregroundColor(.white)
                    }

                }
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(Color.black.cornerRadius(8).opacity(0.6))
            .padding(), alignment: .top
        )
    }
}

#Preview {
    MapView()
}
