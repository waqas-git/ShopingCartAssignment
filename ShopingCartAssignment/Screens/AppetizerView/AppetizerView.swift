//
//  AppetizerView.swift
//  ShoppingCart
//
//  Created by waqas ahmed on 18/10/2024.
//

import SwiftUI

struct AppetizerView: View {
    @State private var appetizerViewModel = AppetizerViewModel()
    var body: some View {
        ZStack {
            NavigationStack {
                List(appetizerViewModel.appetizers) { appetizers in
                    AppetizerCell(appetizer: appetizers).onTapGesture {
                        appetizerViewModel.selectedAppetizer = appetizers
                        print(appetizers.name)
                    }
                }
            }.task {
                //The .task modifier is used to automatically call the getAppetizer() method when the view appears. This ensures the data is fetched as soon as the view loads.
                appetizerViewModel.getAppetizer()
            }
        }
    }
}

#Preview {
    AppetizerView()
}
