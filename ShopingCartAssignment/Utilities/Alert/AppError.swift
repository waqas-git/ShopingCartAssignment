//
//  AppError.swift
//  ShoppingCart
//
//  Created by waqas ahmed on 19/10/2024.
//

import Foundation
enum AppError: String, Error {
    case invalidData = "This requst Data is invalid. Please try again."
    case invalidURL  = "This URL is invalid. Please try again."
    case invalidResponse = "This response is invalid. Please try again."
    case unableToComplete = "Unable to complete this request. Please try again."
}
