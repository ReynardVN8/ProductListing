//
//  View+.swift
//  ProductListing
//
//  Created by ReynardVN8 on 13/02/25.
//

import SwiftUICore

extension View {
    func hidden(_ isHidden: Bool) -> some View {
        opacity(isHidden ? 0 : 1)
    }
}
