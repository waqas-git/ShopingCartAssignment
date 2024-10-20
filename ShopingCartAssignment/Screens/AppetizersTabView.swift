//
//  AppetizersTabView.swift
//  ShoppingCart
//
//  Created by waqas ahmed on 18/10/2024.
//

import SwiftUI

struct AppetizersTabView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerView().tabItem {
                Image(systemName: "house")
                Text("Home")
            }

            OrderView().tabItem {
                Image(systemName: "bag")
                Text("Order")
                    .badge(order.items.count)
            }
        }
    }
}

#Preview {
    AppetizersTabView().environmentObject(Order())
}
