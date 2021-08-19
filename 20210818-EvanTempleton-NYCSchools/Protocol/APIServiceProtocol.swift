//
//  APIServiceProtocol.swift
//  20210818-EvanTempleton-NYCSchools
//
//  Created by Templeton, Evan on 8/18/21.
//

import Foundation

protocol APIServiceProtocol {
    /**
     Retrieve a list of all school names.
       - Parameter successHandler: handler that will be invoked once order has been retrieved.
       - Parameter errorHander: handler that will be invoked if an error occurs during the call.
     */
    func getAllSchools(successHandler: @escaping GetSchoolListSuccessHandler, errorHandler: @escaping ErrorHandler)
}
