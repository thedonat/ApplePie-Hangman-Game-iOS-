//
//  ResultViewController.swift
//  ApplePie
//
//  Created by Burak Donat on 2.02.2019.
//  Copyright © 2019 Burak Donat. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var totalWins : Int = 0
    @IBOutlet weak var gameOver: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "Your score is : \(totalWins*10) "
    }
    
    @IBAction func startNewGame(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
