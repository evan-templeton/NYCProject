//
//  School.swift
//  20210818-EvanTempleton-NYCSchools
//
//  Created by Templeton, Evan on 8/18/21.
//

import Foundation

struct School: Codable {
    let name: String
}

struct SchoolDetailData: Codable {
    let schoolName: String
    let numOfTestTakers: String
    let readingScore: String
    let mathScore: String
    let writingScore: String
}
