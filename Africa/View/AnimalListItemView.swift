//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Halil Usanmaz on 4.07.2022.
//

import SwiftUI

struct AnimalListItemView: View {
    // MARK: PROPERTIES
    
    let animal: Animal;
    
    
    // MARK: BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.description)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
            
        }
    }
}

// MARK: PREVIEW
struct AnimalListItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animal.json")
    static var previews: some View {
        AnimalListItemView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}