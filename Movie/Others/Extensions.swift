//
//  Extensions.swift
//  Movie
//
//  Created by Grisha Diehl on 12.08.2022.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
