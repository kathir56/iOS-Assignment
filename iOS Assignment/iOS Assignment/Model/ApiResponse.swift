//
//  ApiResponse.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 19/04/24.
//

import Foundation

struct ApiResponse: Codable {
    let status: Bool
    let statusCode: Int
    let message: String
    let supportWhatsappNumber: String
    let extraIncome: Float
    let totalLinks: Int
    let totalClicks: Int
    let todayClicks: Int
    let topSource: String
    let topLocation: String
    let startTime: String
    let linksCreatedToday: Int
    let appliedCampaign: Int
    let data: DataResponse
}

struct DataResponse: Codable ,Hashable{
    let recentLinks: [Links]
    let topLinks: [Links]
    let favouriteLinks: [Links]
    //let overallUrlChart: [String: Int]
}

struct Links: Codable,Hashable {
    let urlId: Int
    let webLink: String
    let smartLink: String
    let title: String
    let totalClicks: Int
    let originalImage: String
    let thumbnail: String?
    let timesAgo: String
    let createdAt: String
    let domainId: String
    let urlPrefix: String?
    let urlSuffix: String
    let app: String
    let isFavourite: Bool
    
//    enum CodingKey : String,CodingKey
//    {
//        case id = "urlId"
//    }
    
    enum CodingKeys: String, CodingKey {
        case urlId
        case webLink
        case smartLink
        case title
        case totalClicks
        case originalImage
        case thumbnail
        case timesAgo
        case createdAt
        case domainId
        case urlPrefix
        case urlSuffix
        case app
        case isFavourite
    }
}

