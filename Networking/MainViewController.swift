//
//  MainViewController.swift
//  Networking
//
//  Created by Анна Голубева on 02.05.2021.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var dialogLabel: UILabel!
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var renouncementButton: UIButton!
    @IBOutlet weak var showButton: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.image = UIImage(named: "Pic")
        showButton.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let jokesVC = segue.destination as? JokesViewController else { return }
        jokesVC.fetchDataWithAlamofire()
    }
    
    @IBAction func confirmButtonPressed() {
        confirmButton.isHidden.toggle()
        renouncementButton.isHidden = true
        showButton.isHidden = false
        dialogLabel.text = "Push the button 😉"
        dialogLabel.textColor = .orange
    }
    
    @IBAction func renouncementButtonPressed() {
        renouncementButton.isHidden.toggle()
        confirmButton.isHidden = true
        showButton.isHidden = false
        dialogLabel.text = "Press the button anyway!"
    }
}
