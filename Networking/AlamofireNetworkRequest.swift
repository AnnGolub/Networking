//
//  AlamofireNetworkRequest.swift
//  Networking
//
//  Created by Анна Голубева on 05.05.2021.
//

import Foundation
import Alamofire

class AlamofireNetworkRequest {
    static let shared = AlamofireNetworkRequest()
    
    private init() {}
    
    func fetchJokes(url: String, completion: @escaping (_ jokes: [Joke]) -> () ) {
        AF.request(url)
            .validate()
            .responseJSON { (response) in
                switch response.result {
                case .success(let value):
                    var jokes = [Joke]()
                    jokes = Joke.getJokes(from: value)
                    completion(jokes)
                case .failure(let error):
                    print(error)
                }
            }
    }
}
