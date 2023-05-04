//
//  Product.swift
//  3-swift-shop (iOS)
//
//  Created by Liu Ziyi on 4/5/23.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}
