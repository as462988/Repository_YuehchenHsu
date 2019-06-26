//
//  ViewController.swift
//  loginSingup
//
//  Created by yueh on 2019/6/25.
//  Copyright © 2019 yueh. All rights reserved.
//

import UIKit

enum FormStatus {
    case login
    case singup
}

class ViewController: UIViewController {
    @IBOutlet weak var controlSeg: UISegmentedControl!
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var chechLabel: UILabel!
    
    var formStatus: FormStatus = FormStatus.login
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupViews()
    }
    
    
    func setupViews() {
        switch formStatus {
        case .login:
            chechLabel.textColor = UIColor.gray
            checkTextField.backgroundColor = UIColor.gray
            checkTextField.isUserInteractionEnabled = false
            checkTextField.text = ""
        case .singup:
            chechLabel.textColor = UIColor.black
            checkTextField.backgroundColor = UIColor.white
            checkTextField.isUserInteractionEnabled = true
        }
    }
    
    @IBAction func submit(_ sender: UIButton) {
    }
    
    @IBAction func switchForm(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            if (formStatus == .login) {
                return
            }
            formStatus = .login
            setupViews()
        case 1:
            if(formStatus == .singup){
                return
            }
            formStatus = .singup
            setupViews()
        default:
            break
        }
    }
    
}



