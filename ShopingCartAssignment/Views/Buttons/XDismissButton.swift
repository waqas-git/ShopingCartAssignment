//
//  XDismissButton.swift
//  ShopingCartAssignment
//
//  Created by waqas ahmed on 21/10/2024.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.small)
                .foregroundColor(.black)
                .frame(width: 44, height: 44)
        }
    }
}

#Preview {
    XDismissButton()
}
