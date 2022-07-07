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
            VStack(alignment: .center, spacing: 20) {
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .background(Color.accentColor.frame(height: 6).offset(y:24))
                
                // HEADLINE
                Text(animal.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                    
                // GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                // FACTS
                
                // DESCRIPTION
                
                // LINK
                
            } //: VSTACK
            .navigationBarTitle("Learn about \(animal.name)",
                                displayMode: .inline)
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