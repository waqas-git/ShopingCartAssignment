//
//  AppetizerCell.swift
//  ShoppingCart
//
//  Created by waqas ahmed on 19/10/2024.
//

import Kingfisher
import SwiftUI

struct AppetizerCell: View {
    var appetizer: Appetizer
    var body: some View {
        HStack {
            if let imageURL = URL(string: appetizer.imageURL) {

                KFImage(imageURL)
                    .placeholder {
                        Image("food-placeholder")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                    }
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(10)
            }

            VStack(alignment: .leading, spacing: 5) {
                VStack(alignment: .leading, spacing: 5) {
                    Text(appetizer.name)
                        .font(.title2)
                        .fontWeight(.medium)
                    Text("$\(appetizer.price, specifier: "%.2f")")
                        .foregroundStyle(.secondary)
                        .fontWeight(.semibold)
                }.padding(.leading)
            }
        }
    }
}

#Preview {
    AppetizerCell(appetizer: AppitizerMockData.sampleAppetizer1)
}
