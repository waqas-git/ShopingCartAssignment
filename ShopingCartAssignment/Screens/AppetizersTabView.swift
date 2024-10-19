//
//  AppetizersTabView.swift
//  ShoppingCart
//
//  Created by waqas ahmed on 18/10/2024.
//

import SwiftUI

struct AppetizersTabView: View {
    var body: some View {
        TabView {
            AppetizerView().tabItem {
                Image(systemName: "house")
                Text("Home")
            }

            OrderView().tabItem {
                Image(systemName: "bag")
                Text("Order")
            }
        }
    }
}

#Preview {
    AppetizersTabView()
}
