//
//  ViewController.swift
//  EatUrPills
//
//  Created by Danny Chew on 2/24/18.
//  Copyright © 2018 Danny Chew. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UIApplication.shared.statusBarStyle  = .lightContent
        //Declare a UICollectionViewFlowLayout so you can use it repeatedly
  
        // VC 0
        let overviewVC = OverviewViewController()
        let overviewController = UINavigationController(rootViewController: overviewVC)
        overviewController.tabBarItem.tag = 1
        overviewController.tabBarItem.title = "Now"
        overviewController.tabBarItem.image = #imageLiteral(resourceName: "hourglass")
        
        // VC 1
        let homeVC = HomeViewController()
        let navigationController = UINavigationController(rootViewController: homeVC)
        navigationController.tabBarItem.tag = 0
        navigationController.tabBarItem.image = #imageLiteral(resourceName: "home")
        navigationController.tabBarItem.title = "Home"
        
        // TODO:
        // Profile Controller
        

        viewControllers = [detailController, navigationController]

        tabBar.isTranslucent = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

