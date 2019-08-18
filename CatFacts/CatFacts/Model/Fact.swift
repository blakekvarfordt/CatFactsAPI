//
//  Fact.swift
//  CatFacts
//
//  Created by Blake kvarfordt on 8/16/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import Foundation

struct topLevelObject: Decodable {
    let allDictionary: [String : Fact]
}

struct Fact: Decodable {
    let text: String
}
