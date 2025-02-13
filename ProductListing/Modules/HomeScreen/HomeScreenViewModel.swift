//
//  HomeScreenViewModel.swift
//  ProductListing
//
//  Created by ReynardVN8 on 13/02/25.
//

import Foundation
import SwiftyJSON

class HomeScreenViewModel: ObservableObject{
    @Published var categorites: [ProductCategory]?
    
    func getCategories(){
        if let path = Bundle.main.path(forResource: "DummyData", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let json = try JSON(data: data)
                let categoriesArray = json.arrayValue
                let categories: [ProductCategory] = categoriesArray.compactMap(ProductCategory.init)
                self.categorites = categories
            } catch {
                print("error on fetching dummy data")
            }
        }
    }
    
    func setCategories() -> [ProductCategory]{
        if let categories = self.categorites{
            return categories
        }
        return []
    }
}
