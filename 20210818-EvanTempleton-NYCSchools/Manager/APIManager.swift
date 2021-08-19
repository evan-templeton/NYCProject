//
//  APIManager.swift
//  20210818-EvanTempleton-NYCSchools
//
//  Created by Templeton, Evan on 8/18/21.
//

import Foundation

class APIManager: NSObject, APIManagerProtocol {
    
    static let sharedInstance = APIManager()
    private let apiService: APIServiceProtocol
    
    init(apiService: APIServiceProtocol = APIService()) {
        self.apiService = apiService
    }
    
    func getAllSchools() {
        apiService.getAllSchools(successHandler: <#T##<<error type>>#>, errorHandler: <#T##ErrorHandler##ErrorHandler##(Error?) -> Void#>)
    }
    
    func getDetails(for school: School) {
        
    }
}
