//
//  LeaderboardVC.swift
//  MyApp
//
//  Created by Sarmad Zaheer on 09/07/2023.
//

import UIKit

class LeaderboardVC: UIViewController {
    
    
    @IBOutlet weak var todayButton: UIButton!
    @IBOutlet weak var thisWeekButton: UIButton!
    @IBOutlet weak var allTimeButton: UIButton!
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var firstPointsLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var secondPointsLabel: UILabel!
    @IBOutlet weak var thirdNameLabel: UILabel!
    @IBOutlet weak var thirdPointsLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstImageView.layer.borderColor = UIColor(named: "BorderGold")?.cgColor
        self.firstImageView.layer.borderWidth = 4
        self.firstImageView.layer.cornerRadius = 65
        self.secondImageView.layer.borderColor = UIColor.white.cgColor
        self.secondImageView.layer.borderWidth = 4
        self.secondImageView.layer.cornerRadius = 40
        self.thirdImageView.layer.borderColor = UIColor.white.cgColor
        self.thirdImageView.layer.borderWidth = 4
        self.thirdImageView.layer.cornerRadius = 40
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.layer.cornerRadius = 20
       // self.tableView.register(LeaderboardCell.self, forCellReuseIdentifier: "LeaderboardCell")
        
        
    }
    
    
    @IBAction func todayPressed(_ sender: Any) {
        self.todayButton.titleLabel?.font = UIFont(name: "Poppins-SemiBold", size: 18.0)
        self.thisWeekButton.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 18.0)
        self.allTimeButton.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 18.0)
        
        self.todayButton.setTitleColor(UIColor(named: "BackgroundColor"), for: .normal)
        self.thisWeekButton.setTitleColor(.lightGray, for: .normal)
        self.allTimeButton.setTitleColor(.lightGray, for: .normal)
        
        
        
    }
    
    
    @IBAction func weekPressed(_ sender: Any) {
        self.thisWeekButton.titleLabel?.font = UIFont(name: "Poppins-SemiBold", size: 18.0)
        self.todayButton.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 18.0)
        self.allTimeButton.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 18.0)
        
        self.thisWeekButton.setTitleColor(UIColor(named: "BackgroundColor"), for: .normal)
        self.todayButton.setTitleColor(.lightGray, for: .normal)
        self.allTimeButton.setTitleColor(.lightGray, for: .normal)
        
        
    }
    
    @IBAction func allTimePressed(_ sender: Any) {
        self.allTimeButton.titleLabel?.font = UIFont(name: "Poppins-SemiBold", size: 18.0)
        self.todayButton.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 18.0)
        self.thisWeekButton.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 18.0)
        
        self.allTimeButton.setTitleColor(UIColor(named: "BackgroundColor"), for: .normal)
        self.todayButton.setTitleColor(.lightGray, for: .normal)
        self.thisWeekButton.setTitleColor(.lightGray, for: .normal)
        
        
    }
    
}


extension LeaderboardVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LeaderboardCell")!
        
        return cell ?? UITableViewCell()
    }
    
    
}
