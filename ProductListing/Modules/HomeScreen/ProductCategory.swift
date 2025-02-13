//
//  HomeScreenModel.swift
//  ProductListing
//
//  Created by ReynardVN8 on 13/02/25.
//

import Foundation
import SwiftyJSON

struct ProductCategory: Identifiable {
    let id: String
    var name: String
    var products = [ItemDetail]()
    
    init(_ json: JSON) {
        self.id = json["id"].stringValue
        self.name = json["name"].stringValue
        self.products = json["products"].arrayValue.map{ ItemDetail($0) }
    }
}
