//
//  FactController.swift
//  CatFacts
//
//  Created by Blake kvarfordt on 8/16/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import Foundation

class FactController {
    static func fetchFacts(completion: @escaping (String) -> Void) {
        
        
        let baseURL = URL(string: "https://cat-fact.herokuapp.com")
        
        guard let url = baseURL else { completion(""); return }
        
        let urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: true)
        
        guard let requestURL = urlComponents?.url else { completion(""); return}
        
        print(requestURL)
        
        URLSession.shared.dataTask(with: requestURL) { (data, _, error) in
            
            if let error = error {
                print(error)
                completion("")
                return
            }
            
            guard let data = data else { completion(""); return }
            
            do {
                let topLevelObject = try JSONDecoder().decode(Fact.self, from: data)
                completion(topLevelObject.text)
            } catch {
                print(error)
                completion("")
            }
            
        }.resume()
        
    }
}
