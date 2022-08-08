//
//  CodebleBundleExtension.swift
//  Africa
//
//  Created by Tako Menteshashvili on 02.08.22.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Faild")
        }
        
        guard let data = try?  Data(contentsOf: url) else {
            fatalError("Faild")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Faild")
        }
        return loaded
    }
}
