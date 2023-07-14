//
//  TutorialsVC.swift
//  MyApp
//
//  Created by Sarmad Zaheer on 01/07/2023.
//

import UIKit

class TutorialsVC: UIViewController {
    
    @IBOutlet weak var howToPlayView: UIView!
    @IBOutlet weak var rulesForQuizView: UIView!
    @IBOutlet weak var rbxCalculatorView: UIView!
    @IBOutlet weak var usePromoView: UIView!
    
    
    let tutorialObj = TutorialObject(title: "How to Play quiz", desc: "This is the description")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.howToPlayView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(openTutorialDetailsScreen)))
    }
    
    
    @objc func openTutorialDetailsScreen(){
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TutorialsDetailsVC") as? TutorialsDetailsVC
        vc?.tutorial = tutorialObj
        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}


struct TutorialObject{
    var title:String
    var desc:String
}
