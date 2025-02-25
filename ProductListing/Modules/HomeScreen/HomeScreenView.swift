//
//  ContentView.swift
//  ProductListing
//
//  Created by ReynardVN8 on 13/02/25.
//

import SwiftUI

struct HomeScreenView: View {
    @ObservedObject var homeScreenVM = HomeScreenViewModel()
    
    init(){
        homeScreenVM.getCategories()
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(
                        homeScreenVM.setCategories()
                    ) { category in
                        NavigationLink {
                            ProductListView(categoryID: category.id, categoryName: category.name)
                        } label: {
                            ListItem(titleText: category.name)
                                .offset(y: 10)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeScreenView()
}
