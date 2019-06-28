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
    case loginFail(msg: String)
    case accountEmpty(msg: String)
    case passwordEmpty(msg: String)
    case checkwordEmpty(msg: String)
    case checkTextFail(msg: String)
}

let sharedAccount: String = "appwork_school@gmail.com"
let sharedPassword: String = "1234"

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
    func submit() throws {
        
        guard accountTextField.text?.isEmpty == false else {
            throw CheckError.accountEmpty(msg: "Account should not be empty")
        }
        
        guard passwordTextField.text?.isEmpty == false else {
            throw CheckError.passwordEmpty(msg: "Password should not be empty")
        }
        
        switch formStatus {
        case .login:
            guard sharedAccount == accountTextField.text && sharedPassword == passwordTextField.text else {
                throw CheckError.loginFail(msg: "Login fail")
            }
            
        case .singup:
            guard checkTextField.text?.isEmpty == false else {
                throw CheckError.checkwordEmpty(msg: "Check Password should not be empty")
            }
            
            guard checkTextField.text == passwordTextField.text else {
                throw CheckError.checkTextFail(msg: "Singup fail")
            }
        }
    }
    
    func alert(msg: String) {
        let alert = UIAlertController(title: "Error", message: msg, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    //MARK: IBAction
    @IBAction func submitButton(_ sender: UIButton) {
        switch formStatus {
        case .login:
            do {
                try submit()
            }
            catch CheckError.accountEmpty(let msg){
               alert(msg: msg)
            }
            catch CheckError.passwordEmpty(let msg) {
              alert(msg: msg)
            }
            catch CheckError.loginFail(let msg){
                alert(msg: msg)
            }catch{
                print("error")
            }
        case .singup:
            do {
                try submit()
            }catch CheckError.accountEmpty(let msg){
                alert(msg: msg)
            }
            catch CheckError.passwordEmpty(let msg) {
                alert(msg: msg)
            }
            catch CheckError.checkwordEmpty(let msg){
                alert(msg: msg)
            }catch CheckError.checkTextFail(let msg){
               alert(msg: msg)
            }catch{
                print("error")
            }
        }
    }
}



