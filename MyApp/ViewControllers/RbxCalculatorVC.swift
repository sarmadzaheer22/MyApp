//
//  RbxCalculatorVC.swift
//  MyApp
//
//  Created by Sarmad Zaheer on 01/07/2023.
//

import UIKit

class RbxCalculatorVC: UIViewController {
    
    @IBOutlet weak var enterRobuxTF: UITextField!
    
    @IBOutlet weak var topLabelView: UIView!
    @IBOutlet weak var labelView: UIView!
    @IBOutlet weak var convertedTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        topLabelView.roundCorners(corners: [.topRight,.bottomRight], radius: 20)
        labelView.roundCorners(corners: [.topRight,.bottomRight], radius: 20)
            self.enterRobuxTF.layer.masksToBounds = true
            self.enterRobuxTF.layer.cornerRadius = 20
            self.convertedTF.layer.masksToBounds = true
            self.convertedTF.layer.cornerRadius = 20
            self.enterRobuxTF.delegate = self
    }
    
    
}


extension RbxCalculatorVC: UITextFieldDelegate{
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if(string == ""){
            return true
        }else if(string.isDouble()){
            return true
        }
        
        return false
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if(textField.text != ""){
            let number = Double(textField.text ?? "")
            self.convertedTF.text = String((number ?? 1.0) * 9.42)
        }else{
            self.convertedTF.text = ""
        }
    }
    
    
}

extension String {

    func isDouble() -> Bool {
        if let _ = Double(self) {
            return true
        }
        return false
    }

}

extension UIView {
    func roundCorners(corners:UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
}
