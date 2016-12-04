//
//  ArticleViewController.swift
//  AHStoryboard
//
//  Created by Andyy Hope on 20/01/2016.
//  Copyright © 2016 Andyy Hope. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func printHeadline() {
        print("HEADLINE: Objective-C dies peacefully in sleep")
    }
    
    @IBAction func dismissMeButtonTapped(_ sender: AnyObject) {
        
        dismiss(animated: true, completion: nil)
    }
}
