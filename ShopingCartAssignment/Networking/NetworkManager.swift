//
//  NetworkManager.swift
//  ShoppingCart
//
//  Created by waqas ahmed on 19/10/2024.
//

import Foundation

class NetworkManager {

    // Singleton instance of network class that ensures to use single instance in application
    static let shared = NetworkManager()

    // Private initializer to prevent direct instantiation. This enforce the singleton pattern.
    private init() {}

    func request<T: Decodable>(_ endPoint: URLRequest) async throws -> T {

        // Using async-await with URLSession to fetch data from the API
        let (data, response) = try await URLSession.shared.data(for: endPoint)

        // Ensure the response is an HTTP response and the status code is within the 200–299 range
        guard let httpResponse = response as? HTTPURLResponse,
            (200...299).contains(httpResponse.statusCode)
        else {
            throw NetworkError.invalidResponse
        }

        do {
            // Try to decode the data into the generic type T and return decode data
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            throw NetworkError.decodingError
        }
    }

}

enum NetworkError: Error {
    case badRequest
    case decodingError
    case invalidResponse
    case unableToComplete
    case invalidURL
}

extension NetworkError: LocalizedError {

    var errorDescription: String? {
        switch self {
        case .badRequest:
            return NSLocalizedString(
                "Bad Request (400): Unable to perform the request.",
                comment: "badRequestError")
        case .decodingError:
            return NSLocalizedString(
                "Unable to decode successfully.", comment: "decodingError")
        case .invalidResponse:
            return NSLocalizedString(
                "Invalid response.", comment: "invalidResponse")
        case .unableToComplete:
            return NSLocalizedString(
                "Unable to complete this request. Please try again.",
                comment: "Error Response")
        case .invalidURL:
            return NSLocalizedString(
                "This URL is invalid. Please try again.", comment: "Invalid URL"
            )
        }
    }
}
//
//enum HTTPMethod {
//    case get([URLQueryItem])
//    case post(Data?)
//    case delete
//    case put(Data?)
//
//    var name: String {
//        switch self {
//        case .get:
//            return "GET"
//        case .post:
//            return "POST"
//        case .delete:
//            return "DELETE"
//        case .put:
//            return "PUT"
//        }
//    }
//}
