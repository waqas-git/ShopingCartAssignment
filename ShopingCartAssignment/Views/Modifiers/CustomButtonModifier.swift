//
//  CustomButtonModifier.swift
//  ShopingCartAssignment
//
//  Created by waqas ahmed on 21/10/2024.
//

import SwiftUI
struct CustomButtonModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.Primary)
            .controlSize(.large)
    }
    
}
