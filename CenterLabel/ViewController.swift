//
//  ViewController.swift
//  CenterLabel
//
//  Created by Дубынин Семён on 02.06.2020.
//  Copyright © 2020 Дубынин Семён. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    let elementList =  ["Copper", "Silver", "Argon", "Hydrogen"]
    var currentElementIndex = 0

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
        // Do any additional setup after loading the view.
    }
    func updateElement() {
        answerLabel.text = "⁉️"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        
    }

    @IBAction func showAnswerButtonDidPressed(_ sender: AnyObject) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    @IBAction func nextElementDidPressed(_ sender: UIButton) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }
}

