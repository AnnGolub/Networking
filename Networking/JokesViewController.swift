//
//  JokesViewController.swift
//  Networking
//
//  Created by Анна Голубева on 02.05.2021.
//

import UIKit

class JokesViewController: UITableViewController {
    
    var jokes: [Joke] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 120
        
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        jokes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! JokeCell
        let joke = jokes[indexPath.row]
        cell.configure(with: joke)
        return cell
    }
}

//MARK: - Networking
extension JokesViewController {
    
    func fetchJokes() {
        guard let url = URL(string: "https://official-joke-api.appspot.com/jokes/ten")
        else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                self.jokes = try JSONDecoder().decode([Joke].self, from: data)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
