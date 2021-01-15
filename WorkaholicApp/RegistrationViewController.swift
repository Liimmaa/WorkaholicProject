//
//  RegistrationViewController.swift
//  WorkaholicApp
//
//  Created by Chioma Mmegwa on 14/01/2021.
//

import UIKit
import SnapKit
import MaterialComponents.MaterialTextControls_FilledTextAreas
import MaterialComponents.MaterialTextControls_FilledTextFields

class RegistrationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        setupViews()
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = #colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1)
        label.numberOfLines = 0
        label.text = "Feel free to sign up"
        return label
    }()
    
    let infoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = #colorLiteral(red: 0, green: 0.2470588235, blue: 0.2784313725, alpha: 1)
        label.numberOfLines = 0
        label.text = "Basic Information"
        return label
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "VectorImage")
        imageView.contentMode = .center
        imageView.layer.cornerRadius = 40.5
        imageView.backgroundColor = #colorLiteral(red: 0.8549019608, green: 0.8549019608, blue: 0.8549019608, alpha: 1)
        return imageView
    }()
    
    let firstNameLabel: UITextField = {
        let estimatedFrame = CGRect(x: 0, y: 0, width: 0, height: 0)
        let label = MDCFilledTextField(frame: estimatedFrame)
        label.placeholder = "First Name"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .editing)
        label.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        label.setUnderlineColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        label.setUnderlineColor(#colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1), for: .normal)
        label.setFloatingLabelColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        label.textColor = #colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1)
        label.autocapitalizationType = .none
        return label
    }()
    
    let middleNameLabel: UITextField = {
        let estimatedFrame = CGRect(x: 0, y: 0, width: 0, height: 0)
        let label = MDCFilledTextField(frame: estimatedFrame)
        label.placeholder = "Middle Name"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .editing)
        label.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        label.setUnderlineColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        label.setUnderlineColor(#colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1), for: .normal)
        label.setFloatingLabelColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        label.textColor = #colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1)
        label.autocapitalizationType = .none
        return label
    }()
    
    let lastNameLabel: UITextField = {
        let estimatedFrame = CGRect(x: 0, y: 0, width: 0, height: 0)
        let label = MDCFilledTextField(frame: estimatedFrame)
        label.placeholder = "Last Name"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .editing)
        label.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        label.setUnderlineColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        label.setUnderlineColor(#colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1), for: .normal)
        label.setFloatingLabelColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        label.textColor = #colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1)
        label.autocapitalizationType = .none
        return label
    }()
    
    let emailLabel: UITextField = {
        let estimatedFrame = CGRect(x: 0, y: 0, width: 0, height: 0)
        let label = MDCFilledTextField(frame: estimatedFrame)
        label.placeholder = "E-mail"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .editing)
        label.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        label.setUnderlineColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        label.setUnderlineColor(#colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1), for: .normal)
        label.setFloatingLabelColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        label.textColor = #colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1)
        label.autocapitalizationType = .none
        return label
    }()
    
    let phoneNumberLabel: UITextField = {
        let estimatedFrame = CGRect(x: 0, y: 0, width: 0, height: 0)
        let label = MDCFilledTextField(frame: estimatedFrame)
        label.placeholder = "Phone Number"
        label.font = UIFont.boldSystemFont(ofSize: 14)
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
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .editing)
        label.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        label.setUnderlineColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        label.setUnderlineColor(#colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1), for: .normal)
        label.setFloatingLabelColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        label.textColor = #colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1)
        label.autocapitalizationType = .none
        return label
    }()
    
    let retypePasswordLabel: UITextField = {
        let estimatedFrame = CGRect(x: 0, y: 0, width: 0, height: 0)
        let label = MDCFilledTextField(frame: estimatedFrame)
        label.placeholder = "Re-type Password"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .editing)
        label.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        label.setUnderlineColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        label.setUnderlineColor(#colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1), for: .normal)
        label.setFloatingLabelColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        label.textColor = #colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1)
        label.autocapitalizationType = .none
        return label
    }()
    
    let nextButton: UIButton = {
       let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.contentHorizontalAlignment = .center
        button.backgroundColor = #colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1)
        button.titleLabel?.font = UIFont.init(name: "MontserratRegular", size: 10)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.layer.cornerRadius = 22.5
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        button.layer.shadowOpacity = 0.4
        button.layer.shadowRadius = 0.0
        button.layer.masksToBounds = false
//        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
       return button
    }()
    
    
    func setupViews() {
        view.addSubview(titleLabel)
        view.addSubview(infoLabel)
        view.addSubview(imageView)
        view.addSubview(firstNameLabel)
        view.addSubview(middleNameLabel)
        view.addSubview(lastNameLabel)
        view.addSubview(emailLabel)
        view.addSubview(phoneNumberLabel)
        view.addSubview(passwordLabel)
        view.addSubview(retypePasswordLabel)
        view.addSubview(nextButton)
        
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp.top).offset(180)
            make.left.equalTo(view.snp.left).offset(30)
        }
        
        infoLabel.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(4)
            make.left.equalTo(view.snp.left).offset(30)
        }
        
        imageView.snp.makeConstraints { (make) in
            make.top.equalTo(infoLabel.snp.bottom).offset(40)
            make.centerX.equalTo(view)
            make.height.equalTo(81)
            make.width.equalTo(81)
        }
        
        firstNameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(imageView.snp.bottom).offset(40)
            make.left.equalTo(view.snp.left).offset(30)
            make.width.equalTo(100)
        }
        
        middleNameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(imageView.snp.bottom).offset(40)
            make.left.equalTo(firstNameLabel.snp.right).offset(20)
            make.width.equalTo(110)
        }
        
        lastNameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(imageView.snp.bottom).offset(40)
            make.left.equalTo(middleNameLabel.snp.right).offset(20)
            make.right.equalTo(view.snp.right).offset(-20)
            make.width.equalTo(100)
        }
        
        emailLabel.snp.makeConstraints { (make) in
            make.top.equalTo(lastNameLabel.snp.bottom).offset(25)
            make.left.equalTo(view.snp.left).offset(30)
            make.right.equalTo(view.snp.right).offset(-20)
            make.width.equalTo(100)
        }
        
        phoneNumberLabel.snp.makeConstraints { (make) in
            make.top.equalTo(emailLabel.snp.bottom).offset(25)
            make.left.equalTo(view.snp.left).offset(30)
            make.right.equalTo(view.snp.right).offset(-20)
            make.width.equalTo(100)
        }
        
        passwordLabel.snp.makeConstraints { (make) in
            make.top.equalTo(phoneNumberLabel.snp.bottom).offset(25)
            make.left.equalTo(view.snp.left).offset(30)
            make.right.equalTo(view.snp.right).offset(-20)
            make.width.equalTo(100)
        }
        
        retypePasswordLabel.snp.makeConstraints { (make) in
            make.top.equalTo(passwordLabel.snp.bottom).offset(25)
            make.left.equalTo(view.snp.left).offset(30)
            make.right.equalTo(view.snp.right).offset(-20)
            make.width.equalTo(100)
        }
        
        nextButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(view.snp.bottom).offset(-60)
            make.centerX.equalTo(view)
            make.height.equalTo(45)
            make.width.equalTo(250)
        }
    }
}
