//
//  Joke.swift
//  Networking
//
//  Created by Анна Голубева on 02.05.2021.
//

struct Joke: Decodable {
    let id: Int?
    let type: String?
    let setup: String?
    let punchline: String?
    
    init(jokeData: [String : Any]) {
        id = jokeData["id"] as? Int
        type = jokeData["type"] as? String
        setup = jokeData["setup"] as? String
        punchline = jokeData["punchline"] as? String
    }
    
    static func getJokes(from value: Any) -> [Joke] {
        guard let jokesData = value as? [[String : Any]] else { return [] }
        return jokesData.compactMap { Joke(jokeData: $0) }
    }
}

enum URLS: String {
    case jokesURL = "https://official-joke-api.appspot.com/jokes/ten"
}
