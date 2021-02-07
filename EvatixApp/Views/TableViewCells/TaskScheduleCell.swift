//
//  TaskScheduleCell.swift
//  EvatixApp
//
//  Created by ShareTrip iOS on 7/2/21.
//

import UIKit

class TaskScheduleCell: UITableViewCell {
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var descriptionView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        descriptionView.backgroundColor = .cyan
        descriptionView.layer.cornerRadius = 8.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(hour: String) {
        self.hourLabel.text = hour
    }
    
}
