//
//  JokeCell.swift
//  Networking
//
//  Created by Анна Голубева on 02.05.2021.
//

import UIKit

class JokeCell: UITableViewCell {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var jokeAnswerLabel: UILabel!
    
    func configure(with joke: Joke) {
        questionLabel.text = joke.setup
        jokeAnswerLabel.text = joke.punchline
    }
}
