//
//  ListItem.swift
//  ProductListing
//
//  Created by ReynardVN8 on 13/02/25.
//

import SwiftUI

struct ListItem: View {
    var titleText: String
    var descText: String = ""
    var priceText: String = ""
    var qtyText: AttributedString = AttributedString("")
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top){
                Text(titleText)
                    .font(.system(size: 16, weight: .semibold))
                Spacer()
                Text(qtyText)
                    .font(.system(size: 12, weight: .regular))
                    .hidden(qtyText.description.isEmpty)
            }
            Spacer()
                .frame(height: 5)
                .hidden(descText.isEmpty && priceText.isEmpty)
            HStack(alignment: .top){
                Text(descText)
                    .font(.system(size: 12, weight: .regular))
                    .hidden(descText.isEmpty)
                Spacer()
                Text(priceText)
                    .font(.system(size: 12, weight: .regular))
                    .hidden(priceText.isEmpty)
            }
                .hidden(descText.isEmpty && priceText.isEmpty)
        }
        .padding(20)
        .cornerRadius(8)
        .shadow(radius: 8)
    }
}

#Preview {
    ListItem(titleText: "title", descText: "desc", priceText: "price", qtyText: "quantites")
}
