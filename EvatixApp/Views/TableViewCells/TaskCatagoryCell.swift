//
//  TaskCatagoryCell.swift
//  EvatixApp
//
//  Created by Sharetrip-iOS on 07/02/2021.
//

import UIKit

class TaskCatagoryCell: UITableViewCell {
    @IBOutlet weak var totalTaskLabel: UILabel!
    @IBOutlet weak var leftTaskLabel: UILabel!
    @IBOutlet weak var catagoryCollectionView: UICollectionView!
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    private func setupView() {
        catagoryCollectionView.delegate = self
        catagoryCollectionView.dataSource = self
        catagoryCollectionView.registerNibCell(CatagoryCell.self)
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        self.catagoryCollectionView.collectionViewLayout = layout
        
        if let layout = self.catagoryCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.minimumInteritemSpacing = 8
            layout.minimumLineSpacing = 8
            layout.invalidateLayout()
        }
    }
}

extension TaskCatagoryCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(CatagoryCell.self, for: indexPath) as CatagoryCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 62)
    }
    
}
