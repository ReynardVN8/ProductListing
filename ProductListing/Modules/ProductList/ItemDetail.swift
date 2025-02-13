//
//  ItemDetail.swift
//  ProductListing
//
//  Created by ReynardVN8 on 13/02/25.
//

import Foundation
import SwiftyJSON

struct ItemDetail {
    let id: String
    var name: String?
    var price: Double?
    var description: String?
    var quantity: Int?
    
    init(_ json: JSON) {
        self.id = json["id"].stringValue
        self.name = json["name"].string
        self.price = json["price"].double
        self.description = json["description"].string
        self.quantity = json["quantity"].int
    }
}
