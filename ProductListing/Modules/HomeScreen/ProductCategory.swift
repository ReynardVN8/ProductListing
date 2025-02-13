//
//  HomeScreenModel.swift
//  ProductListing
//
//  Created by ReynardVN8 on 13/02/25.
//

import Foundation

struct ProductCategory {
    let id: String
    var name: String?
    var quantity: Int?
    var products = [ItemDetail]()
    
    init(id: String, name: String? = nil, quantity: Int? = nil, products: [ItemDetail] = [ItemDetail]()) {
        self.id = id
        self.name = name
        self.quantity = quantity
        self.products = products
    }
}
