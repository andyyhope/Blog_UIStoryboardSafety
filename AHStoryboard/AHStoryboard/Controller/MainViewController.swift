//
//  MainViewController.swift
//  AHStoryboard
//
//  Created by Andyy Hope on 20/01/2016.
//  Copyright © 2016 Andyy Hope. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Storyboard"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func pressMeForMagicButtonTapped(sender: AnyObject) {
        
        let storyboard = UIStoryboard(storyboard: .News)
        
        let viewController = storyboard.instantiateViewController(ArticleViewController.self)
        
        viewController.printHeadline()
        
        presentViewController(viewController, animated: true, completion: nil)
    }
}
