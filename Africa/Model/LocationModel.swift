//
//  LocationModel.swift
//  Africa
//
//  Created by Halil Usanmaz on 9.07.2022.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable {
    var id : String;
    var name : String;
    var image: String;
    var latitude: Double;
    var longitude: Double;
    
    // COMPUTED PROPERTY
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

