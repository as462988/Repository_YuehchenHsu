//
//  ViewController.swift
//  loginSingup
//
//  Created by yueh on 2019/6/25.
//  Copyright © 2019 yueh. All rights reserved.


import UIKit

enum FormStatus {
    case login
    case singup
}

enum CheckError: Error {
    case loginFail
    case accountEmpty
    case passwordEmpty
    case checkwordEmpty
    case checkTextFail
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
//            passwordTextField.isSecureTextEntry = true
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
    
    func submit(accountText: String, passwordText: String, checkText: String?) throws {
        
        guard accountTextField.text?.isEmpty == false else {
            throw CheckError.accountEmpty
        }
        
        guard passwordTextField.text?.isEmpty == false else {
            throw CheckError.passwordEmpty
        }
        
        guard accountText == accountTextField.text && passwordText == passwordTextField.text else {
            throw CheckError.loginFail
        }
        
        guard checkTextField.text?.isEmpty == false else {
            throw CheckError.checkwordEmpty
        }
        
        guard checkTextField.text == passwordTextField.text else {
            throw CheckError.checkTextFail
        }
        
    }
    

    @IBAction func submitButton(_ sender: UIButton) {
        switch formStatus {
        case .login:
            do {
                try submit(accountText: "appwork_school@gmail.com", passwordText: "1234", checkText: nil)
            }
            catch CheckError.accountEmpty{
                let accountEmpty = UIAlertController(title: "Error", message: "Account should not be empty", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                accountEmpty.addAction(okAction)
                present(accountEmpty, animated: true, completion: nil)
            }
            catch CheckError.passwordEmpty {
                let passwordEmpty = UIAlertController(title: "Error", message: "Password should not be empty", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                passwordEmpty.addAction(okAction)
                present(passwordEmpty, animated: true, completion: nil)
            }
            catch CheckError.loginFail {
                let errorAccount = UIAlertController(title: "Error", message: "Login fail", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                errorAccount.addAction(okAction)
                present(errorAccount, animated: true, completion: nil)
            }catch{
                print("error")
            }
        case .singup:
            do {
                try submit(accountText: accountTextField.text! , passwordText: passwordTextField.text!, checkText: checkTextField.text)
            }catch CheckError.accountEmpty{
                let accountEmpty = UIAlertController(title: "Error", message: "Account should not be empty", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                accountEmpty.addAction(okAction)
                present(accountEmpty, animated: true, completion: nil)
            }
            catch CheckError.passwordEmpty {
                let passwordEmpty = UIAlertController(title: "Error", message: "Password should not be empty", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                passwordEmpty.addAction(okAction)
                present(passwordEmpty, animated: true, completion: nil)
            }
            catch CheckError.checkwordEmpty{
                let checkEmpty = UIAlertController(title: "Error", message: "Check Password should not be empty", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                checkEmpty.addAction(okAction)
                present(checkEmpty, animated: true, completion: nil)
            }catch CheckError.checkTextFail{
                let checkFail = UIAlertController(title: "Error", message: "Singup fail", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                checkFail.addAction(okAction)
                present(checkFail, animated: true, completion: nil)
            }catch{
                print("error")
            }
            return
        }
    }
}



