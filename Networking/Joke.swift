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
}
