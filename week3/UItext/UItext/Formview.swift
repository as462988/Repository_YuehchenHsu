//
//  Formview.swift
//  UItext
//
//  Created by yueh on 2019/6/30.
//  Copyright © 2019 yueh. All rights reserved.
//

import UIKit

class FormView: UIView {
    let titleLaybel: UILabel = UILabel()
    var segControl: UISegmentedControl = UISegmentedControl(items: ["Log in","Sign up"])
    let grayView: UIView = UIView()
    let accountLabel = UILabel()
    let passwordLabel = UILabel()
    let checkPasswordLabel = UILabel()
    let accountText = UITextField()
    let passwordText = UITextField()
    let checkPasswordText = UITextField()
    let submitButton = UIButton(type: .system)
    
    init() {
        super.init(frame: CGRect.zero)
        self.backgroundColor = UIColor.white
        setupViews()
        layoutViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        titleLabel()
        segControl​()
        grayViewIndex()
        submitButtonView()
        self.addSubview(titleLaybel)
        self.addSubview(segControl)
        self.addSubview(grayView)
        self.addSubview(accountLabel)
        self.addSubview(passwordLabel)
        self.addSubview(checkPasswordLabel)
        self.addSubview(accountText)
        self.addSubview(passwordText)
        self.addSubview(checkPasswordText)
        self.addSubview(submitButton)
    }
    
    private func layoutViews() {
        NSLayoutConstraint.activate([
            titleLaybel.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor, constant: 80),
            titleLaybel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            segControl.topAnchor.constraint(equalTo: titleLaybel.bottomAnchor, constant: 70),
            segControl.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            segControl.widthAnchor.constraint(equalToConstant: 150),
            segControl.heightAnchor.constraint(equalToConstant: 30),
            
            grayView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            grayView.widthAnchor.constraint(equalToConstant: 255),
            grayView.heightAnchor.constraint(equalToConstant: 125),
            grayView.topAnchor.constraint(equalTo: segControl.bottomAnchor, constant: 40),
            
            accountLabel.topAnchor.constraint(equalTo: grayView.topAnchor, constant: 10),
            accountLabel.leftAnchor.constraint(equalTo: grayView.leftAnchor, constant: 15),
            
            passwordLabel.topAnchor.constraint(equalTo: accountLabel.bottomAnchor, constant: 20),
            passwordLabel.leftAnchor.constraint(equalTo: grayView.leftAnchor, constant: 15),
            
            checkPasswordLabel.bottomAnchor.constraint(equalTo: grayView.bottomAnchor, constant: -10),
            checkPasswordLabel.leftAnchor.constraint(equalTo: grayView.leftAnchor, constant: 15),
            
            accountText.centerYAnchor.constraint(equalTo: accountLabel.centerYAnchor),
            accountText.rightAnchor.constraint(equalTo: grayView.rightAnchor, constant: -10),
            accountText.widthAnchor.constraint(equalToConstant: 150),
            accountText.heightAnchor.constraint(equalToConstant: 30),
            
            passwordText.centerYAnchor.constraint(equalTo: passwordLabel.centerYAnchor),
            passwordText.centerXAnchor.constraint(equalTo: accountText.centerXAnchor),
            passwordText.widthAnchor.constraint(equalToConstant: 150),
            passwordText.heightAnchor.constraint(equalToConstant: 30),
            
            checkPasswordText.centerYAnchor.constraint(equalTo: checkPasswordLabel.centerYAnchor),
            checkPasswordText.centerXAnchor.constraint(equalTo: accountText.centerXAnchor),
            checkPasswordText.widthAnchor.constraint(equalToConstant: 150),
            checkPasswordText.heightAnchor.constraint(equalToConstant: 30),
            
            submitButton.widthAnchor.constraint(equalToConstant: 235),
            submitButton.heightAnchor.constraint(equalToConstant: 30),
            submitButton.topAnchor.constraint(equalTo: grayView.bottomAnchor, constant: 50),
            submitButton.centerXAnchor.constraint(equalTo: self.centerXAnchor)
            ])
    }
    
    private func titleLabel(){
        titleLaybel.translatesAutoresizingMaskIntoConstraints = false
        titleLaybel.text = "AppWorks School​"
        titleLaybel.font = UIFont.systemFont(ofSize: 40)
    }
    
    private func segControl​(){
        segControl.translatesAutoresizingMaskIntoConstraints = false
        segControl.tintColor = UIColor.black
        segControl.backgroundColor = UIColor.white
        segControl.selectedSegmentIndex = 0
        
    }
    
    private func grayViewIndex(){
        grayView.translatesAutoresizingMaskIntoConstraints = false
        accountLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        checkPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        accountText.translatesAutoresizingMaskIntoConstraints = false
        passwordText.translatesAutoresizingMaskIntoConstraints = false
        checkPasswordText.translatesAutoresizingMaskIntoConstraints = false
        
        grayView.backgroundColor = UIColor.lightGray
        accountLabel.text = "Account"
        accountLabel.textColor = UIColor.black
        
        passwordLabel.text = "Password"
        passwordLabel.textColor = UIColor.black
        
        checkPasswordLabel.text = "Check"
        checkPasswordLabel.textColor = UIColor.black
        
        accountText.backgroundColor = UIColor.white
        accountText.layer.cornerRadius = 5
        accountText.autocapitalizationType = UITextAutocapitalizationType.none
        
        passwordText.backgroundColor = UIColor.white
        passwordText.layer.cornerRadius = 5
        passwordText.autocapitalizationType = UITextAutocapitalizationType.none
        
        checkPasswordText.backgroundColor = UIColor.white
        checkPasswordText.layer.cornerRadius = 5
        checkPasswordText.autocapitalizationType = UITextAutocapitalizationType.none
    }
    
    private func submitButtonView(){
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        
        submitButton.setTitle("Button", for: .normal)
        submitButton.setTitleColor(UIColor.white, for: .normal)
        submitButton.backgroundColor = UIColor.black
//        submitButton.isSelected = true
    }
}
