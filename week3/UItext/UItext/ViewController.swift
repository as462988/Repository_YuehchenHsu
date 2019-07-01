//
//  ViewController.swift
//  UItext
//
//  Created by yueh on 2019/6/29.
//  Copyright © 2019 yueh. All rights reserved.
//

import UIKit

enum Status {
    case login
    case singup
}

enum submitError: Error {
    case loginFail(msg: String)
    case accountEmpty(msg: String)
    case passwordEmpty(msg: String)
    case checkwordEmpty(msg: String)
    case checkTextFail(msg: String)
}

let sharedAccount: String = "appwork_school@gmail.com"
let sharedPassword: String = "1234"

class ViewController: UIViewController {

    let formView: FormView = FormView()
    var formStatus: Status = Status.login
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(formView)
        formView.frame = view.frame
        formView.submitButton.addTarget(self, action: #selector(ViewController.submitButton), for: .touchUpInside)
        formView.segControl.addTarget(self, action: #selector(ViewController.switchForm), for: .valueChanged)
        setupFormViews()
    }

    @objc func switchForm(_ sender: UISegmentedControl){
        switch sender.selectedSegmentIndex{
        case 0:
            if formStatus == .login{
                return
            }
            formStatus = .login
            setupFormViews()
        case 1:
            if formStatus == .singup{
                return
            }
            formStatus = .singup
            setupFormViews()
        default:
            break
        }
    }

    func setupFormViews(){
        switch formStatus {
        case .login:
            formView.checkPasswordLabel.textColor = UIColor.gray
            formView.checkPasswordText.backgroundColor = UIColor.gray
            formView.checkPasswordText.isUserInteractionEnabled = false
            formView.checkPasswordText.text = ""
        case .singup:
            formView.checkPasswordLabel.textColor = UIColor.black
            formView.checkPasswordText.backgroundColor = UIColor.white
            formView.checkPasswordText.isUserInteractionEnabled = true
            
        }
    }
    
    func submit() throws {
        guard formView.accountText.text?.isEmpty == false else {
            throw submitError.accountEmpty(msg: "Account should not be empty")
        }
        guard formView.passwordText.text?.isEmpty == false else {
            throw submitError.passwordEmpty(msg: "Password should not be empty")
        }
        switch formStatus {
        case .login:
            guard sharedAccount == formView.accountText.text && sharedPassword == formView.passwordText.text else {
                throw submitError.loginFail(msg: "Login fail")
            }
            
        case .singup:
            guard formView.checkPasswordText.text?.isEmpty == false else {
                throw submitError.checkwordEmpty(msg: "Check Password should not be empty")
            }
            
            guard formView.checkPasswordText.text == formView.passwordText.text else {
                throw submitError.checkTextFail(msg: "Singup fail")
            }
        }
    }
    
    func alert(msg: String){
        let alert = UIAlertController(title: "Error", message: msg, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    
    @objc func submitButton() {
        switch formStatus {
        case .login:
            do{
                try submit()
            }
            catch submitError.accountEmpty(let msg){
                alert(msg: msg)
            }
            catch submitError.passwordEmpty(let msg){
                alert(msg: msg)
            }
            catch submitError.loginFail(let msg){
                alert(msg: msg)
            }
            catch{
                print("error")
            }
        case .singup:
            do{
                try submit()
            }
            catch submitError.accountEmpty(let msg){
                alert(msg: msg)
            }
            catch submitError.passwordEmpty(let msg){
                alert(msg: msg)
            }
            catch submitError.checkwordEmpty(let msg){
                alert(msg: msg)
            }
            catch submitError.checkTextFail(let msg){
                alert(msg: msg)
            }
            catch{
                print("error")
            }
        }
        

    }
    
}



