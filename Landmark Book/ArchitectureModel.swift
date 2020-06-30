//
//  ArchitectureModel.swift
//  Landmark Book
//
//  Created by Pushpanshu Ranjan Singh on 30/06/20.
//  Copyright © 2020 Pushpanshu Ranjan Singh. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Architecture: Identifiable {
    var id = UUID()
    var name: String
    var country: String
    var place: String
    var category: String
    var imagename: String
    var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
}

struct Coordinates{
    var latitude: Double
    var longitude: Double
}

var Architecture1 = Architecture(name: "Eiffel Tower", country: "France", place: "Paris", category: "Tower", imagename: "EiffelTower", coordinates: Coordinates(latitude: 48.8584, longitude: 2.2945))
var Architecture2 = Architecture(name: "Burj al Arab", country: "Dubai", place: "Dubai", category: "Hotel", imagename: "BurjalArab", coordinates: Coordinates(latitude: 25.1409048, longitude: 55.1847909))
var Architecture3 = Architecture(name: "Parthenon", country: "Greece", place: "Athens", category: "Temple", imagename: "Parthenon", coordinates: Coordinates(latitude: 37.9715, longitude: 23.7267))
var Architecture4 = Architecture(name: "Angkor Wat", country: "Cambodia", place: "Cambodia", category: "Temple", imagename: "AngkorWat", coordinates: Coordinates(latitude: 13.4125, longitude: 103.8670))
var Architecture5 = Architecture(name: "Saint Peter’s Basilica", country: "Italy", place: "Vatican", category: "Church", imagename: "StPetersBasilica", coordinates: Coordinates(latitude: 41.9022, longitude: 12.4539))
var Architecture6 = Architecture(name: "Sydney Opera House", country: "Australia", place: "Sydney NSW", category: "Art Centre", imagename: "SydneyOperaHouse", coordinates: Coordinates(latitude: 33.8568, longitude: 51.2153))
var Architecture7 = Architecture(name: "Colosseum", country: "Italy", place: "Piazza del Colosseo", category: "Amphitheatre", imagename: "Colosseum", coordinates: Coordinates(latitude: 41.8902, longitude: 12.4922))

var ArchitectureList = [Architecture1, Architecture2, Architecture3, Architecture4, Architecture5, Architecture6, Architecture7]
