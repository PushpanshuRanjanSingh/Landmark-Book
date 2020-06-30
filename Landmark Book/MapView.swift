//
//  MapView.swift
//  Landmark Book
//
//  Created by Pushpanshu Ranjan Singh on 01/07/20.
//  Copyright © 2020 Pushpanshu Ranjan Singh. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
//    var Architecture: Architecture
    var coordinate: CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region,animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: ArchitectureList[1].locationCoordinate)
    }
}
