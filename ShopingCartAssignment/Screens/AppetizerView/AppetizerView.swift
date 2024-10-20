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
                        appetizerViewModel.isShowingDetails = true
                    }
                }
                .navigationTitle("Appetizers")
                .disabled(appetizerViewModel.isShowingDetails)
                .listStyle(.plain)
            }.task {
                //The .task modifier is used to automatically call the getAppetizer() method when the view appears. This ensures the data is fetched as soon as the view loads.
                appetizerViewModel.getAppetizer()
            }
            .blur(radius: appetizerViewModel.isShowingDetails ? 20: 0)
            
            if(appetizerViewModel.isShowingDetails){
                AppetizerDetailView(appetizer: appetizerViewModel.selectedAppetizer!, isShowDetail: $appetizerViewModel.isShowingDetails)
            }
        }.alert(item: $appetizerViewModel.alertItem) {alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerView()
}
