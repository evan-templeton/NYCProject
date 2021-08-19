//
//  APIService.swift
//  20210818-EvanTempleton-NYCSchools
//
//  Created by Templeton, Evan on 8/18/21.
//

import Foundation

typealias GetAllSchoolsSuccessHandler = (_ schools: [School]) -> Void
typealias GetSchoolDetailsSuccessHandler = (_ details: SchoolDetailModel) -> Void

typealias ErrorHandler = ((Error?) -> Void)

class APIService: APIServiceProtocol {
    
    func getAllSchools(successHandler: @escaping GetAllSchoolsSuccessHandler, errorHandler: @escaping ErrorHandler) {
        let session = URLSession.shared
        let baseUrl = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json")!
        let task = session.dataTask(with: baseUrl) { data, response, error in
            
            if error != nil || data == nil {
                self.handleClientError(error)
            }
            
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                self.handleServerError(response)
                return
            }
            
            self.parseData(with: data)
        }
        task.resume()
    }
    
    func getDetails(for school: School, successHandler: @escaping GetSchoolDetailsSuccessHandler, errorHandler: @escaping ErrorHandler) {
        let baseUrl = URL(string: "https://data.cityofnewyork.us/resource/f9bf-2cp4.json")!
    }
    
    private func parseData(with data: Data?) {
        
    }
    
    private func handleClientError(_ error: Error?) {
        
    }
    
    private func handleServerError(_ response: URLResponse?) {
        
    }
    
}

