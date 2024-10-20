//
//  ShopingCartAssignmentApp.swift
//  ShopingCartAssignment
//
//  Created by waqas ahmed on 20/10/2024.
//

import SwiftUI

@main
struct ShopingCartAssignmentApp: App {

    var order = Order()
    var body: some Scene {
        WindowGroup {
            AppetizersTabView().environmentObject(order)
        }
    }
}
