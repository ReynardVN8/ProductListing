//
//  ItemDetail.swift
//  ProductListing
//
//  Created by ReynardVN8 on 13/02/25.
//

struct ItemDetail {
    let id: String
    var name: String?
    var price: Double?
    var description: String?
    var quantity: Int?
    
    init(id: String, name: String? = nil, price: Double? = nil, description: String? = nil, quantity: Int? = nil) {
        self.id = id
        self.name = name
        self.price = price
        self.description = description
        self.quantity = quantity
    }
}
