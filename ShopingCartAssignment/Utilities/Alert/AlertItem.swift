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
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text(AppError.invalidData.rawValue),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text(AppError.invalidResponse.rawValue),
                                           dismissButton: .default(Text("OK")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                      message: Text(AppError.invalidURL.rawValue),
                                      dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text(AppError.unableToComplete.rawValue),
                                            dismissButton: .default(Text("OK")))
}
