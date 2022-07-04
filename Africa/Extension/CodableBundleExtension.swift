//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Halil Usanmaz on 2.07.2022.
//

import Foundation

extension Bundle {
    func decode<T: Codable> (_ file: String) -> T {
        // LOCATE THE JSON FILE
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Failed to locate \(file) in bundle")
        }
        
        // CREATE A PROPERTY FOR DATA
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        // CREATE A DECODER
        
        let decoder = JSONDecoder()
        
        // CREATE A PROPERTY FOR THE DECODER
        guard let loaded = try? decoder.decode(T.self, from: data) else{
            fatalError("Failed to locate \(file) in bundle")
        }
        // RETURN THE READY-TO-USE DATA
        return loaded;
    }
}
