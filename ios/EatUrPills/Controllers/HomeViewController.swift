//
//  HomeViewController.swift
//  EatUrPills
//
//  Created by Danny Chew on 2/24/18.
//  Copyright © 2018 Danny Chew. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var collectionView: UICollectionView!
    var addButton: UIView!
    let feedCell: String = "FeedCell"
    var timeType: [TimeType] = [.Morning, .Afternoon, .Evening, .Night]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       setupCollectionView()
        setupButton()
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
        collectionView.register(FeedCollectionViewCell.self, forCellWithReuseIdentifier: feedCell)
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
    
    func setupButton() {
        // button
        addButton = UIView()
        addButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(addButton)
        
        NSLayoutConstraint.activate([
            addButton.widthAnchor.constraint(equalToConstant: 60),
            addButton.heightAnchor.constraint(equalToConstant: 60),
            addButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -15),
            addButton.bottomAnchor.constraintEqualToSystemSpacingBelow(self.view.bottomAnchor, multiplier: -60)
            ])
        
        addButton.layer.cornerRadius = 30
        addButton.backgroundColor = Theme.greenColor()
        
        let addView = CustomDrawView(type: .Plus, lineColor: UIColor.white)
        addView.translatesAutoresizingMaskIntoConstraints = false
        
        // TODO:
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // morining, afternoon, evening, night
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: feedCell, for: indexPath) as! FeedCollectionViewCell
        
        cell.setupView(medicines: <#T##[Medicine]#>, vaccines: <#T##[Vaccine]#>, timeType: timeType[indexPath.item], cellSize: indexPath.item == 0 ? .Large : .Small)
        
        cell.setNeedsLayout()
        cell.layoutIfNeeded()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //FIXME: first two
        if indexPath.row < 1 {
            return CGSize(width: view.frame.width * 0.8, height: view.frame.width * 0.85)
        }
        return CGSize(width: view.frame.width * 0.4, height: view.frame.width * 0.5)
    }
}
