//
//  Order.swift
//  ShopingCartAssignment
//
//  Created by waqas ahmed on 21/10/2024.
//

import Foundation
class Order: ObservableObject{
    @Published var items : [Appetizer] = []
    
    
    func add(_ appetizer: Appetizer){
        items.append(appetizer)
    }
    
    func deleteItem(at offset: IndexSet){
        items.remove(atOffsets: offset)
    }
    
    var totalPrice : Double{
        items.reduce(0) { $0 + $1.price }
    }
}
