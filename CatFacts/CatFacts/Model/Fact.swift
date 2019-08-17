//
//  Fact.swift
//  CatFacts
//
//  Created by Blake kvarfordt on 8/16/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import Foundation

struct topLevelObject: Decodable {
    let object: secondLevelObject
}

struct secondLevelObject: Decodable {
    let allFacts: [Fact]
}

struct Fact: Decodable {
    let text: String
}
