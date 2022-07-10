//
//  CenterModifier.swift
//  Africa
//
//  Created by Halil Usanmaz on 10.07.2022.
//

import Swift
import SwiftUI

struct CenterModifier: ViewModifier{
    func body(content: Content) -> some View{
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
    
    
}
