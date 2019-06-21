//
//  ViewController.swift
//  funFacts
//
//  Created by yueh on 2019/6/22.
//  Copyright © 2019 yueh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var assignmentLabel: UILabel!
    @IBOutlet weak var funFactBotton: UIButton!
    
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignmentLabel.text = factProvider.randomFact()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func showFact() {
       
        assignmentLabel.text = factProvider.randomFact()
        let newcolor = UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0)
        view.backgroundColor = newcolor
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactBotton.tintColor = randomColor
        
    }
}

