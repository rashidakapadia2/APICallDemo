//
//  EmployeeModel.swift
//  APICallDemo
//
//  Created by Neosoft on 05/05/22.
//

import Foundation

struct BasicModel: Codable {
    //let status: String
    let data: DataModel
    let support: SupportModel
    
    enum CodingKeys: String,CodingKey {
       // case status = "status"
        case data = "data"
        case support = "support"
    }
}

struct DataModel: Codable {
    let id: Int
    let name: String
    let year: Int
    let color: String
    let pantone_value: String
    
    enum CodingKeys: String,CodingKey {
        case id = "id"
        case name = "name"
        case year = "year"
        case color = "color"
        case pantone_value = "pantone_value"
    }
}

struct SupportModel: Codable {
    let url: String
    let text: String
    
    enum CodingKeys: String,CodingKey {
        case url = "url"
        case text = "text"
    }
}
