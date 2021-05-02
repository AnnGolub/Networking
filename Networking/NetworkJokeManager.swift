//
//  NetworkJokeManager.swift
//  Networking
//
//  Created by Анна Голубева on 03.05.2021.
//

import Foundation

//class NetworkJokeManager {
//
//    static let shared = NetworkJokeManager()
//
//    func fetchJokes(from url: String?, with complition: @escaping ([Joke]) -> Void) {
//        guard let url = URL(string: "https://official-joke-api.appspot.com/jokes/ten") else { return }
//
//        URLSession.shared.dataTask(with: url) { (data, _, error) in
//            guard let data = data else {
//                print(error?.localizedDescription ?? "No error description")
//                return
//            }
//
//            do { let jokes = try JSONDecoder().decode([Joke].self, from: data)
//                DispatchQueue.main.async {
//                  complition(jokes)
//                }
//            } catch let error {
//                print(error.localizedDescription)
//            }
//        }.resume()
//    }
//
//    private init() {}
//
//}

