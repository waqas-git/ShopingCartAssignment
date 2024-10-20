//
//  EmptyState.swift
//  ShopingCartAssignment
//
//  Created by waqas ahmed on 21/10/2024.
//

import SwiftUI
struct EmptyState : View {
    var image: String
    var message: String
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            VStack{
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }.offset(y: -50)
        }
    }
}

#Preview {
    EmptyState(image: "empty-order", message: "This is the empty state.")
}
