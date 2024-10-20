//
//  AppButton.swift
//  ShopingCartAssignment
//
//  Created by waqas ahmed on 21/10/2024.
//

import SwiftUI

struct AppButton: View {
    var title: LocalizedStringKey
    var body: some View {
        Text(title)
            .frame(width: 250, height: 50)
                .font(.title3)
                .background(Color.Primary)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .cornerRadius(10)
    }
}

#Preview {
    AppButton(title: "$\(124.00099000, specifier: "%.2f") Add to order")
}
