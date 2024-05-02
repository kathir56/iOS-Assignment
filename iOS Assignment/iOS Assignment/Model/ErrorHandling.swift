//
//  ErrorHandling.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 19/04/24.
//

import Foundation

enum CommonError : Error,LocalizedError
{
    case invalidURL
    case serverError
    case invalidData
    case unknownError(Error)
    
    var errorDescription: String?
    {
        switch self {
        case .invalidURL:
            return "The URL was invalid, Please try again later."
        case .serverError:
            return "There was an error with an server. Please try again later."
        case .invalidData:
            return "The saree data is invalid. Please try again later"
        case .unknownError(let error):
            return error.localizedDescription
        }
    }
}
