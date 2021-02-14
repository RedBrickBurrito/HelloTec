//
//  ViewController.swift
//  HelloTec
//
//  Created by user187992 on 2/13/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var robotButton: UIButton!
    @IBOutlet weak var skullButton: UIButton!
    @IBOutlet weak var alienButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        robotButton.layer.cornerRadius = 20
        skullButton.layer.cornerRadius = 20
        alienButton.layer.cornerRadius = 20
    }
    
    @IBAction func showMessage(_ sender: UIButton) {
        var emojiDict = ["🤖":"Robot", "👽":"Alien", "💀":"Skull"]
        
        let selectedButton = sender
        
        if let wordToLookup = selectedButton.titleLabel?.text {
            let meaning = emojiDict[wordToLookup]
            
            let alertController = UIAlertController(title: "Meaning", message: "Hello " + meaning!, preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler : nil))
            present(alertController, animated: true, completion: nil)
        }
        
    }
    
}

