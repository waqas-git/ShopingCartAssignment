//
//  Endpoints.swift
//  ShoppingCart
//
//  Created by waqas ahmed on 19/10/2024.
//

import Foundation
enum Endpoints {
    case appetizers
    
    private var baseURL: String {
        return "https://waqas-git.github.io/api/"
    }
    
    var urlString: String {
        switch self {
        case .appetizers:
            return "\(baseURL)appetizers.json"
        }
    }
}
