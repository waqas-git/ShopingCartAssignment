//
//  AppetizerViewModel.swift
//  ShoppingCart
//
//  Created by waqas ahmed on 18/10/2024.
//

import Foundation
import SwiftUI

@MainActor
@Observable final class AppetizerViewModel {
    var appetizers: [Appetizer] = []
    var selectedAppetizer: Appetizer?
    var alertItem : AlertItem?
    var isShowingDetails = false
    
    func getAppetizer() {
        Task {
            do{
                appetizers = try await ApiService.shared.fetchAppetizers()
            } catch {
                if let appError = error as? AppError{
                    switch appError{
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
