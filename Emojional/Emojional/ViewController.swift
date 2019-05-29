//
//  ViewController.swift
//  Emojional
//
//  Created by Caroline Port on 5/29/19.
//  Copyright © 2019 Caroline Port. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let emojis = ["🤩": "starstruck", "😢": "tear"]
    let customMessage = ["starstruck": ["sit down for a second", "take a breather"], "tear": ["you're amazing!", "what a cutie"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        let selectedEmoji = sender.titleLabel!.text
        let message = emojis[selectedEmoji!]!
        let options = customMessage[emojis[selectedEmoji!]!]!.count
        let emojiMessage = customMessage[emojis[selectedEmoji!]!]?[Int.random(in: 0 ... options-1)]
        let alertController = UIAlertController(title: "you are \(message)", message: emojiMessage, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }

}

