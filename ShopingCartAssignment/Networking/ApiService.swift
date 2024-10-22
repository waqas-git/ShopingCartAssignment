//
//  ApiService.swift
//  ShoppingCart
//
//  Created by waqas ahmed on 19/10/2024.
//

import Foundation

class ApiService {
    
    // Singleton instance for centralized access
    static let shared = ApiService()
    
    // Private initializer to prevent direct instantiation
    private init() {}
    
    /// Fetches a list of appetizers from the API.
    /// - Returns: An array of Appetizer objects.
    func fetchAppetizers() async throws -> [Appetizer] {
        let request = try createRequest(for: Endpoints.appetizers.urlString)
        
        // Decoding APIResponse with Appetizer as the generic type
        let response: APIResponse<Appetizer> = try await NetworkManager.shared.request(request)
        
        // Extract the array of Appetizers from the response
        return response.request
    }
    
    // Creates a URLRequest from a URL string after validation.
        private func createRequest(for urlString: String) throws -> URLRequest {
            let url = try validateURL(urlString)
            return URLRequest(url: url)
        }

        // Validates the URL string and returns a URL object or throws an error.
        private func validateURL(_ urlString: String) throws -> URL {
            guard let url = URL(string: urlString) else {
                throw NetworkError.invalidURL
            }
            return url
        }
}
