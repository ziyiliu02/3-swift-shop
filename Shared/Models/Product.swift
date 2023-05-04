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

var productList = [Product(name: "Sweater 1", image:"sweater1", price: 54),
                   Product(name: "Sweater 2", image:"sweater2", price: 89),
                   Product(name: "Sweater 3", image:"sweater3", price: 79),
                   Product(name: "Sweater 4", image:"sweater4", price: 94),
                   Product(name: "Sweater 5", image:"sweater5", price: 99),
                   Product(name: "Sweater 6", image:"sweater6", price: 65),
                   Product(name: "Sweater 7", image:"sweater7", price: 54),
                   Product(name: "Sweater 8", image:"sweater8", price: 83)]


