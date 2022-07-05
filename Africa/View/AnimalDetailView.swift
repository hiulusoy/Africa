//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Halil Usanmaz on 5.07.2022.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: PROPERTIES
    
    let animal: Animal;
    
    // MARK: BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        } //: SCROLL
        
    }
}
    // MARK: PREVIEW
struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalDetailView(animal:animals[0])
    }
}
