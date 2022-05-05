//
//  APIService.swift
//  APICallDemo
//
//  Created by Neosoft on 05/05/22.
//

import Foundation
import UIKit

class APIService {
    
    static func webService(completion: @escaping( (BasicModel) -> Void )) {
        let session = URLSession.shared
        let url = URL(string: "https://reqres.in/api/products/3")
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        let task = session.dataTask(with: request) { data, response, err in
            
            guard err == nil else {
                print(err)
                return
            }
            guard (response != nil) else {
                print("response is nil")
                return
            }
            //            if response == (200...300) {
            //
            //            }
            //            if let response = response {
            //                if response == 200 {
            //                    return
            //                }
            //                else if response =
            //            }
            if let data = data {
                print(String(bytes: data, encoding: .utf8))
                do {
                    
                    let decoder = JSONDecoder()
                    let content = try decoder.decode(BasicModel.self, from: data)
                    print(content)
                    completion(content)
                }
                catch{
                    print("data could not get JSON Serialized")
                }
            }
        }
        task.resume()
    }
}
