//
//  ProductListViewModel.swift
//  ProductListing
//
//  Created by ReynardVN8 on 13/02/25.
//

import Foundation
import SwiftyJSON

class ProductListViewModel: ObservableObject {
    @Published var items: [ItemDetail]?
    @Published var categoryID: String = ""
    @Published var categoryName: String = ""
    
    func getProductListByCategory() {
        if let path = Bundle.main.path(forResource: "DummyData", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let json = try JSON(data: data)
                let categoryArray = json.arrayValue
                let categories: [ProductCategory] = categoryArray.compactMap(ProductCategory.init)
                let filteredCategory = categories.first { $0.id == categoryID }
                
                if let filteredCategory = filteredCategory {
                    self.items = filteredCategory.products
                }
            } catch {
                print("error on fetching dummy data")
            }
        }
    }
    
    func setProductListByCategory() -> [ItemDetail] {
        if let itemsDisplayed = self.items {
            return itemsDisplayed
        }
        return []
    }
}
