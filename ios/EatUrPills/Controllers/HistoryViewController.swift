//
//  HistoryViewController.swift
//  EatUrPills
//
//  Created by Danny Chew on 2/24/18.
//  Copyright © 2018 Danny Chew. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    var collectionView: UICollectionView!
    var headerView: WarningHeaderView!
    var historyCell: String = "HistoryCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupCollectionView()
        
    }

    func setupCollectionView() {
        collectionView = UICollectionView()
        let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.minimumLineSpacing = 15
        layout?.minimumInteritemSpacing = 15
        
        // view.backgroundColor = ThemeColor.bgColor()
        collectionView?.backgroundColor = UIColor.white
        collectionView?.alwaysBounceVertical = true
        collectionView?.showsHorizontalScrollIndicator = false
        collectionView?.delegate = self
        collectionView.register(HistoryCollectionViewCell.self, forCellWithReuseIdentifier: historyCell)
        collectionView?.dataSource = self
        
        self.view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 15),
            collectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15),
            collectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -15),
            collectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -15)
            ])
        
        
        
        // TODO: Header
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension HistoryViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: historyCell, for: indexPath) as! HistoryCollectionViewCell
        // TODO:
        
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // num of days
        return 3
    }
}
