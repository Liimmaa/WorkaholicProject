//
//  ViewController.swift
//  WorkaholicApp
//
//  Created by Chioma Mmegwa on 14/01/2021.
//

import UIKit
import SnapKit
import MaterialComponents.MaterialTextControls_FilledTextAreas
import MaterialComponents.MaterialTextControls_FilledTextFields

class SigninViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        passwordLabel.delegate = self
        passwordLabel.enablePasswordToggle()
        setupViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    let emailLabel: UITextField = {
        let estimatedFrame = CGRect(x: 0, y: 0, width: 0, height: 0)
        let label = MDCFilledTextField(frame: estimatedFrame)
        label.placeholder = "E-mail"
        label.font = UIFont.init(name: "MontserratRegular", size: 10)
        label.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .editing)
        label.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        label.setUnderlineColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        label.setUnderlineColor(#colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1), for: .normal)
        label.setFloatingLabelColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        label.textColor = #colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1)
        label.autocapitalizationType = .none
        return label
    }()
    
    let passwordLabel: UITextField = {
        let estimatedFrame = CGRect(x: 0, y: 0, width: 0, height: 0)
        let label = MDCFilledTextField(frame: estimatedFrame)
        label.placeholder = "Password"
        label.font = UIFont.init(name: "MontserratRegular", size: 10)
        label.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .editing)
        label.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        label.setUnderlineColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        label.setUnderlineColor(#colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1), for: .normal)
        label.setFloatingLabelColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        label.isSecureTextEntry = true
        label.textColor = #colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1)
        label.autocapitalizationType = .none
        return label
    }()
    
    let privacyLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1)
        label.numberOfLines = 0
        label.text = "We respect your privacy!"
        return label
    }()
    
    let signinButton: UIButton = {
       let signinButton = UIButton()
        signinButton.setTitle("Sign in", for: .normal)
        signinButton.contentHorizontalAlignment = .center
        signinButton.backgroundColor = #colorLiteral(red: 0, green: 0.2470588235, blue: 0.2784313725, alpha: 1)
        signinButton.titleLabel?.font = UIFont.init(name: "MontserratRegular", size: 10)
        signinButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        signinButton.layer.cornerRadius = 22.5
        signinButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        signinButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        signinButton.layer.shadowOpacity = 0.4
        signinButton.layer.shadowRadius = 0.0
        signinButton.layer.masksToBounds = false
        signinButton.addTarget(self, action: #selector(handleSignin), for: .touchUpInside)
       return signinButton
    }()
    
    let enquiryLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1)
        label.numberOfLines = 0
        label.text = "Don’t have an account?"
        return label
    }()
    
    let registerButton: UIButton = {
       let registerButton = UIButton()
        registerButton.setTitle("Register", for: .normal)
        registerButton.contentHorizontalAlignment = .center
        registerButton.backgroundColor = #colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1)
        registerButton.titleLabel?.font = UIFont.init(name: "MontserratRegular", size: 10)
        registerButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        registerButton.layer.cornerRadius = 22.5
        registerButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        registerButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        registerButton.layer.shadowOpacity = 0.4
        registerButton.layer.shadowRadius = 0.0
        registerButton.layer.masksToBounds = false
        registerButton.addTarget(self, action: #selector(handleRegistration), for: .touchUpInside)
       return registerButton
    }()
    
    let termsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1)
        label.numberOfLines = 0
        label.text = "By registering you agree to the TERMS and CONDITIONS"
        return label
    }()
    
    func setupViews() {
        view.addSubview(emailLabel)
        view.addSubview(passwordLabel)
        view.addSubview(privacyLabel)
        view.addSubview(signinButton)
        view.addSubview(enquiryLabel)
        view.addSubview(registerButton)
        view.addSubview(termsLabel)
        constraints()
    }
}

extension SigninViewController {
    
    func constraints() {
        emailLabel.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp.top).offset(300)
            make.left.equalTo(view.snp.left).offset(22)
            make.right.equalTo(view.snp.right).offset(-34)
        }
        
        passwordLabel.snp.makeConstraints { (make) in
            make.top.equalTo(emailLabel.snp.bottom).offset(36)
            make.left.equalTo(view.snp.left).offset(22)
            make.right.equalTo(view.snp.right).offset(-34)
        }
        
        privacyLabel.snp.makeConstraints { (make) in
            make.top.equalTo(passwordLabel.snp.bottom).offset(10)
            make.right.equalTo(view.snp.right).offset(-34)
        }
        
        signinButton.snp.makeConstraints { (make) in
            make.top.equalTo(privacyLabel.snp.bottom).offset(80)
            make.centerX.equalTo(view)
            make.height.equalTo(45)
            make.width.equalTo(250)
        }
        
        enquiryLabel.snp.makeConstraints { (make) in
            make.top.equalTo(signinButton.snp.bottom).offset(35)
            make.centerX.equalTo(view)
        }
        
        registerButton.snp.makeConstraints { (make) in
            make.top.equalTo(enquiryLabel.snp.bottom).offset(5)
            make.centerX.equalTo(view)
            make.height.equalTo(45)
            make.width.equalTo(250)
        }
        
        termsLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(view.snp.bottom).offset(-100)
            make.centerX.equalTo(view)
        }
    }
    
    @objc func handleSignin() {
        if emailLabel.text != "" && passwordLabel.text != "" {
            let view = RegistrationViewController()
            navigationController?.pushViewController(view, animated: true)
        }
        else {
            let alert = UIAlertController(title: "⚠️", message: "Please fill in all fields", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @objc func handleRegistration() {
        if emailLabel.text != "" && passwordLabel.text != "" {
            let view = RegistrationViewController()
            navigationController?.pushViewController(view, animated: true)
        }
        else {
            let alert = UIAlertController(title: "⚠️", message: "Please fill in all fields", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}
