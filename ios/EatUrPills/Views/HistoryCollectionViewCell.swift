//
//  HistoryCollectionViewCell.swift
//  EatUrPills
//
//  Created by Danny Chew on 2/24/18.
//  Copyright © 2018 Danny Chew. All rights reserved.
//

import UIKit

class HistoryCollectionViewCell: UICollectionViewCell {
    // reuse
    
    func setupCellView() {
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        if self.subviews.contains(self.contentView) {
            for subView in self.contentView.subviews {
                subView.removeFromSuperview()
            }
        }
        
        setupCellView()
    }
}
