//
//  CatagoryCell.swift
//  EvatixApp
//
//  Created by Sharetrip-iOS on 07/02/2021.
//

import UIKit

class CatagoryCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var catagoryIndicatorView: UIView!
    @IBOutlet weak var containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    private func setupView() {
        catagoryIndicatorView.layer.cornerRadius = 4.0
        containerView.layer.cornerRadius = 10.0
        containerView.backgroundColor = .cyan
    }

}
