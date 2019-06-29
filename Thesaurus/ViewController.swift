//
//  ViewController.swift
//  Thesaurus
//
//  Created by Daren Davis on 6/27/19.
//  Copyright © 2019 DarenDavis.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var synonymTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func synonymsButtonClicked() {
        processInput()
        inputTextField.text = ""
    }
    
    func processInput() {
        let input = inputTextField.text!
        let initialResults = synonyms(for: input)
        var results : [String] = []
        if initialResults[0] == "None on file." {
            results = doubleCheck(for: input)
        } else {
            results = initialResults
        }
        var message = ""
        for result in results {
            message += result + "\n"
        }
        synonymTextView.text = message
    }
}

