//
//  ProductListView.swift
//  ProductListing
//
//  Created by ReynardVN8 on 13/02/25.
//

import SwiftUI

struct ProductListView: View {
    @ObservedObject var productListVM = ProductListViewModel()
    
    init (categoryID: String, categoryName: String){
        productListVM.categoryID = categoryID
        productListVM.categoryName = categoryName
        productListVM.getProductListByCategory()
    }
    
    var body: some View {
        VStack{
            List{
                ForEach(
                    productListVM.setProductListByCategory()
                ){ item in
                    ListItem(titleText: item.name,
                             descText: "\(item.description ?? "")",
                             priceText: "Price: \(item.price)$",
                             qtyText: "Qty: \(item.quantity)")
                }
            }
        }
            .navigationTitle(productListVM.categoryName)
    }
}

#Preview {
    ProductListView(categoryID: "category1", categoryName: "Electronic")
}
