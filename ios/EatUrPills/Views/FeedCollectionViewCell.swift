//
//  FeedCollectionViewCell.swift
//  EatUrPills
//
//  Created by Danny Chew on 2/24/18.
//  Copyright © 2018 Danny Chew. All rights reserved.
//

import UIKit

enum cellSizeType {
    case Large
    case Small
}

enum TimeType {
    case Morning
    case Afternoon
    case Evening
    case Night
}

class FeedCollectionViewCell: UICollectionViewCell {
    var cellSize: cellSizeType = .Small
    var medicines: [Medicine] = []
    var vaccines: [Vaccine] = []
    var timeType: TimeType = .Morning
    var collectionView: UICollectionView!
    var itemCell: String = "ItemCell"
    
    func setupView(medicines: [Medicine], vaccines: [Vaccine], timeType: TimeType, cellSize: cellSizeType) {
        self.cellSize = cellSize
        self.medicines = medicines
        self.vaccines = vaccines
        self.timeType = timeType
        
        setupCellView()

    }
    
    func setupCellView() {
        //init
        setupCollectionView()
        
        // modify
        self.collectionView.layer.cornerRadius = 30
        self.collectionView.backgroundColor = Theme.containerColor()
    }
    
    func setupCollectionView() {
        collectionView = UICollectionView()
        let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.minimumLineSpacing = 5
        layout?.minimumInteritemSpacing = 5
        
        // view.backgroundColor = ThemeColor.bgColor()
        collectionView?.alwaysBounceVertical = true
        collectionView?.showsHorizontalScrollIndicator = false
        collectionView?.delegate = self
        collectionView.register(MediCollectionViewCell.self, forCellWithReuseIdentifier: itemCell)
        collectionView?.dataSource = self
        
        // title
        let titleLabel: UILabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 5),
            titleLabel.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 5),
            titleLabel.rightAnchor.constraint(equalTo: self.contentView.rightAnchor, constant: -5)
            ])
        
        titleLabel.font = Theme.fontTitle()
        titleLabel.textColor = Theme.fontColor()
        
        if timeType == TimeType.Morning {
            titleLabel.text = "Morning"
        }
        else if timeType == TimeType.Afternoon {
            titleLabel.text = "Afternoon"
        }
        else if timeType == TimeType.Evening {
            titleLabel.text = "Evening"
        }
        else if timeType == TimeType.Night {
            titleLabel.text = "Night"
        }
        
        // collectionView
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            collectionView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 15),
             collectionView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -15),
              collectionView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -15)
            ])
        
    }
    
    
    // reuse
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

extension FeedCollectionViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return medicines.count + vaccines.count
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // TODO:
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //FIXME: first two
        return CGSize(width: collectionView.frame.width / 3, height: collectionView.frame.width / 3)
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: itemCell, for: indexPath) as! MediCollectionViewCell
        let num = indexPath.item
        if num < medicines.count {
            
        }
        else {
            
        }
        return cell
    }
    
}
