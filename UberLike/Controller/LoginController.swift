//
//  File.swift
//  UberLike
//
//  Created by Adila on 7/10/20.
//  Copyright © 2020 Adila Abudureheman. All rights reserved.
//


import UIKit
class LoginController: UIViewController {
    
    // MARK: - Properties
     let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "UBER LIKE"
        label.font = UIFont(name: "Avenir-Light", size: 36)
        label.textColor = UIColor(white: 1, alpha: 0.8)
        return label
    }()
    
    let emailContainerView : UIView = {
        let view = UIView()
        view.backgroundColor = .red
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "ic_mail_outline_white_2x")
        imageView.alpha = 0.87
        view.addSubview(imageView)
        imageView.centerY(inView: view)
        imageView.anchor(left: view.leftAnchor, paddingLeft:8, width: 24, height: 24)
        return view
    }()
    
    let emailTextField : UITextField = {
        let tf = UITextField()
        tf.borderStyle = .none
        
        tf.font = UIFont.systemFont(ofSize: 16.0)
        tf.textColor = .white
        tf.keyboardAppearance = .dark
        tf.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        return tf
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 25/255, green: 25/255, blue: 25/255, alpha : 1)
        view.addSubview(titleLabel)
        titleLabel.anchor(top : view.safeAreaLayoutGuide.topAnchor)
        titleLabel.centerX(inView : view)
        view.addSubview(emailContainerView)
        emailContainerView.anchor(top: titleLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 40, paddingLeft: 16,  paddingRight: 16,height: 50)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
