//
//  OrderView.swift
//  ShoppingCart
//
//  Created by waqas ahmed on 18/10/2024.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
     
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items){appetizer in
                            AppetizerCell(appetizer: appetizer)
                            
                        }.onDelete(perform: order.deleteItem)
                    }.listStyle(.plain)
                    
                    Button{
                        print("Order button tapped")
                    } label: {
                        //ApButton(title: "\(order.totalPrice, specifier: "%.2f") - Place Order")
                        Text("\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(CustomButtonModifier())
                    .padding(.bottom, 20)
                }
                if order.items.isEmpty{
                    EmptyState(image: "empty-order", message: "There is no order in the list.\n Please add new order from appetizer list.")
                }
            }
                .navigationTitle("Orders")
        }
    }
}

#Preview {
    OrderView().environmentObject(Order())
}
