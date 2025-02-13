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
    var descText: String
    var priceText: String = ""
    var qtyText: String = ""
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top){
                Text(titleText)
                Spacer()
                if !qtyText.isEmpty{
                    Text(qtyText)
                }
            }
            Spacer()
                .frame(height: 5)
            HStack(alignment: .top){
                Text(descText)
                Spacer()
                if !priceText.isEmpty{
                    Text(priceText)
                }
            }
        }
        .padding(20)
        .cornerRadius(8)
        .shadow(radius: 8)
    }
}

#Preview {
    ListItem(id: "1", titleText: "title", descText: "desc")
}
