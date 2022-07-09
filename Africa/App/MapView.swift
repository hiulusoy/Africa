//
//  MapView.swift
//  Africa
//
//  Created by Halil Usanmaz on 2.07.2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: PROPERTIES
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion;
    }()//: REGION
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: BODY
    var body: some View {
        // MARK: No-1 Basic Map
        //Map(coordinateRegion: $region);
        
        // MARK: No-2 Map with annotations
        Map(coordinateRegion: $region, annotationItems: locations,annotationContent: {
            item in
            // (A) PIN: Old Style --> Always Static
            //MapPin(coordinate: item.location, tint: .accentColor)
            
            // (B) PIN: New Style --> Always Static
            //MapMarker(coordinate: item.location, tint: .accentColor)
            // (C) CUSTOM BASIC ANNOTATION
            //            MapAnnotation(coordinate: item.location){
            //                Image("logo")
            //                    .resizable()
            //                    .scaledToFit()
            //                    .frame(width: 32, height: 32)
            //            }
            MapAnnotation(coordinate: item.location){
                MapAnnotationView(location: item)
            }
        }) //: MAP
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 5){
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }//: HSTACK
                    Divider()
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }//: HSTACK
                    
                }//: VSTACK
            }//: HSTACK
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(Color.black
                    .opacity(0.6))
                .padding(.top)
            ,alignment: .top
        )
    }
}
// MARK: PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
