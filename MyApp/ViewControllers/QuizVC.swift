//
//  QuizVC.swift
//  MyApp
//
//  Created by Sarmad Zaheer on 01/07/2023.
//

import UIKit

class QuizVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startQuizPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PlayQuizVC")
        self.navigationController?.pushViewController(vc , animated: true)
    }
}
