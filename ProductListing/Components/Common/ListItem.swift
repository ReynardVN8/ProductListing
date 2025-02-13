//
//  ListItem.swift
//  ProductListing
//
//  Created by ReynardVN8 on 13/02/25.
//

import SwiftUI

struct ListItem: View {
    var id: String
    var titleText: String
    var descText: String = ""
    var priceText: String = ""
    var qtyText: String = ""
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top){
                Text(titleText)
                Spacer()
                Text(qtyText)
                    .hidden(qtyText.isEmpty)
            }
            Spacer()
                .frame(height: 5)
                .hidden(descText.isEmpty && priceText.isEmpty)
            HStack(alignment: .top){
                Text(descText)
                    .hidden(descText.isEmpty)
                Spacer()
                Text(priceText).hidden(priceText.isEmpty)
            }
                .hidden(descText.isEmpty && priceText.isEmpty)
        }
        .padding(20)
        .cornerRadius(8)
        .shadow(radius: 8)
    }
}

#Preview {
    ListItem(id: "1", titleText: "title", descText: "desc", priceText: "price", qtyText: "quantites")
}
