//
//  LeaderboardCell.swift
//  MyApp
//
//  Created by Sarmad Zaheer on 14/07/2023.
//

import UIKit

class LeaderboardCell: UITableViewCell {
    
    
    @IBOutlet weak var imageProfileView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
