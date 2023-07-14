//
//  PlayQuizVC.swift
//  MyApp
//
//  Created by Sarmad Zaheer on 05/07/2023.
//

import UIKit

class PlayQuizVC: UIViewController {

    @IBOutlet weak var sliderView: UISlider!
    @IBOutlet weak var viewA: UIView!
    @IBOutlet weak var viewB: UIView!
    @IBOutlet weak var viewC: UIView!
    @IBOutlet weak var viewD: UIView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var questionNumberLabel: UILabel!
    
    @IBOutlet weak var optionALabel: UILabel!
    @IBOutlet weak var optionBLabel: UILabel!
    @IBOutlet weak var optionCLabel: UILabel!
    @IBOutlet weak var optionDLabel: UILabel!
    
    @IBOutlet weak var createQuizPressed: UILabel!
    
    
    @IBOutlet weak var scoresView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var correctAnswersLabel: UILabel!
    @IBOutlet weak var completionLabel: UILabel!
    @IBOutlet weak var skippedLabel: UILabel!
    @IBOutlet weak var incorrectLabel: UILabel!
    @IBOutlet weak var totalPointsLabel: UILabel!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var getItButton: UIButton!
    
    
    var currentQuestionCount = 0
    let questions = Questions().questions
    var selectedOption:Int? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderView.setThumbImage(UIImage(named: "Pointer"), for: .normal)
        
        self.viewA.layer.borderColor = UIColor.white.cgColor
        self.viewA.layer.borderWidth = 1
        self.viewA.tag = 1
        self.viewB.layer.borderColor = UIColor.white.cgColor
        self.viewB.layer.borderWidth = 1
        self.viewB.tag = 2
        self.viewC.layer.borderColor = UIColor.white.cgColor
        self.viewC.layer.borderWidth = 1
        self.viewC.tag = 3
        self.viewD.layer.borderColor = UIColor.white.cgColor
        self.viewD.layer.borderWidth = 1
        self.viewD.tag = 4
        self.viewA.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)) ))
        self.viewB.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)) ))
        self.viewC.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)) ))
        self.viewD.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)) ))
        
        self.questionNumberLabel.text = "\(currentQuestionCount+1)/\(questions.count) Quiz"
        self.questionLabel.text = "\(questions[currentQuestionCount].question)"
        
        self.optionALabel.text = questions[currentQuestionCount].options[0]
        self.optionBLabel.text = questions[currentQuestionCount].options[1]
        self.optionCLabel.text = questions[currentQuestionCount].options[2]
        self.optionDLabel.text = questions[currentQuestionCount].options[3]
        
        
        self.sliderView.maximumValue = Float(questions.count)
        self.sliderView.value = Float(currentQuestionCount+1)
        self.sliderView.isUserInteractionEnabled = false
        
        self.shareButton.layer.cornerRadius = 10
        self.shareButton.layer.borderWidth = 2
        self.shareButton.layer.borderColor = UIColor(named: "BorderTheme")?.cgColor
        self.getItButton.layer.cornerRadius = 10
        
        self.scoresView.alpha = 0
        
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        
//        self.nextButton.setTitle("Next", for: .normal)
//
//        self.currentQuestionCount = currentQuestionCount+1
//
//        if(currentQuestionCount == questions.count-1){
//            self.nextButton.setTitle("Submit", for: .normal)
//        }
//
//
//        self.questionNumberLabel.text = "\(currentQuestionCount+1)/\(questions.count) Quiz"
//        self.questionLabel.text = "\(questions[currentQuestionCount].question)"
//        self.optionALabel.text = questions[currentQuestionCount].options[0]
//        self.optionBLabel.text = questions[currentQuestionCount].options[1]
//        self.optionCLabel.text = questions[currentQuestionCount].options[2]
//        self.optionDLabel.text = questions[currentQuestionCount].options[3]
//
//
//        self.sliderView.maximumValue = Float(questions.count)
//        self.sliderView.value = Float(currentQuestionCount+1)
        
        UIView.animate(withDuration: 0.5, delay: 0.5, animations: {
            self.scoresView.alpha = 1
        })
    }
    
    @IBAction func leaderboardPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LeaderboardVC") as? LeaderboardVC
        self.navigationController?.pushViewController(vc ?? UIViewController() , animated: true)
    }
    
    
    
    
  @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
      let selected = sender?.view?.tag
      
      self.viewA.layer.borderWidth = 1
      self.viewA.backgroundColor = .clear
      self.viewB.layer.borderWidth = 1
      self.viewB.backgroundColor = .clear
      self.viewC.layer.borderWidth = 1
      self.viewC.backgroundColor = .clear
      self.viewD.layer.borderWidth = 1
      self.viewD.backgroundColor = .clear
      
      if(selected == 1){
          self.viewA.backgroundColor = UIColor(named: "ThemeColor")
          self.viewA.layer.borderWidth = 0
          
      }else if(selected == 2){
          self.viewB.backgroundColor = UIColor(named: "ThemeColor")
          self.viewB.layer.borderWidth = 0
          
      }else if(selected == 3){
          self.viewC.backgroundColor = UIColor(named: "ThemeColor")
          self.viewC.layer.borderWidth = 0
          
      }else if(selected == 4){
          self.viewD.backgroundColor = UIColor(named: "ThemeColor")
          self.viewD.layer.borderWidth = 0
      }
      
      }

}
