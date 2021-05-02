//
//  MainViewController.swift
//  Networking
//
//  Created by Анна Голубева on 02.05.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let jokesVC = segue.destination as? JokesViewController else { return }
        jokesVC.fetchJokes()
    }
}
