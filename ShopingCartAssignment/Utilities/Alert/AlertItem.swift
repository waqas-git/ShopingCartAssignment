//
//  AlertItem.swift
//  ShopingCartAssignment
//
//  Created by waqas ahmed on 21/10/2024.
//

import Foundation
import SwiftUI
struct AlertItem : Identifiable{
    let id  = UUID()
    let title : Text
    let message : Text
    let dismissButton : Alert.Button
}

struct AlertContext {
    //MARK: - Network Alerts
    
    static func makeAlert(for error: NetworkError) -> AlertItem {
            return AlertItem(
                title: Text("Server Error"),
                message: Text(error.localizedDescription),
                dismissButton: .default(Text("OK"))
            )
        }

        // Network Alerts using the helper method
        static let invalidData = makeAlert(for: .badRequest)
        static let invalidResponse = makeAlert(for: .invalidResponse)
        static let invalidURL = makeAlert(for: .invalidURL)
        static let unableToComplete = makeAlert(for: .unableToComplete)
        static let decodingError = makeAlert(for: .decodingError)
}
