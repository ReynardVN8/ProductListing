//
//  ItemDetail.swift
//  ProductListing
//
//  Created by ReynardVN8 on 13/02/25.
//

import Foundation
import SwiftyJSON

struct ItemDetail: Identifiable {
    let id: String
    var name: String
    var price: Double
    var description: String?
    var quantity: Int
    
    init(_ json: JSON) {
        self.id = json["id"].stringValue
        self.name = json["name"].stringValue
        self.price = json["price"].doubleValue
        self.description = json["description"].string
        self.quantity = json["quantity"].intValue
    }
}
