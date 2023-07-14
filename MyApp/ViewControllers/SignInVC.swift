//
//  SignInVC.swift
//  MyApp
//
//  Created by Sarmad Zaheer on 01/07/2023.
//

import UIKit

class SignInVC: UIViewController {

    @IBOutlet weak var signUpLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.signUpLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(openSignUpScreen)))
        self.signUpLabel.isUserInteractionEnabled = true
    }
    
    @objc func openSignUpScreen(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SignUpVC") as? SignUpVC
        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "RootTabBarVC")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
}
