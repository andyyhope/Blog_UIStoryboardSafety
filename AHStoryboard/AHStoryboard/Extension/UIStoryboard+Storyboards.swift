//
//  UIStoryboard+Storyboards.swift
//  AHStoryboard
//
//  Created by Andyy Hope on 19/01/2016.
//  Copyright © 2016 Andyy Hope. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    /// The uniform place where we state all the storyboard we have in our application
    
    enum Storyboard : String {
        case Main
        case News
        case Gallery
    }
    
    
    /// Convenience Initializers
    
    convenience init(storyboard: Storyboard) {
        self.init(storyboard: storyboard, bundle: nil)
    }
    
    convenience init(storyboard: Storyboard, bundle: NSBundle?) {
        self.init(name: storyboard.rawValue, bundle: bundle)
    }
    
    
    /// Class Functions
    
    class func storyboard(storyboard: Storyboard) -> UIStoryboard {
        return UIStoryboard.storyboard(storyboard, bundle: nil)
    }
    
    class func storyboard(storyboard: Storyboard, bundle: NSBundle?) -> UIStoryboard {
        return UIStoryboard(name: storyboard.rawValue, bundle: bundle)
    }
    
    
    /// View Controller Instantiation from Generics
    
    func instantiateViewController<T: UIViewController where T: StoryboardIdentifiable>(_: T.Type) -> T {
        guard let viewController = self.instantiateViewControllerWithIdentifier(T.storyboardIdentifier) as? T else {
            fatalError("Couldn't instantiate view controller with identifier \(T.storyboardIdentifier) ")
        }
        
        return viewController
    }
}

