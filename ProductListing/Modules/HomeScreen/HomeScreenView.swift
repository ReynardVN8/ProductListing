//
//  ContentView.swift
//  ProductListing
//
//  Created by ReynardVN8 on 13/02/25.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(0..<20) {_ in
                        ListItem(id: "", titleText: "", descText: "")
                    }
                }
            }
        }
    }
}

#Preview {
    HomeScreenView()
}
