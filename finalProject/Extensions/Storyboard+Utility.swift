//
//  Storyboard+Utility.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/16/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

extension UIStoryboard {

    // Our enum contains a case for each of our app's storyboards. We also create a computed variable that capitalizes the rawValue of each case. This computed variable returns the corresponding filename for each storyboard.

    // StoryType is a made up type
    // contains a case for each of our app's storyboards
    enum StoryType: String {
        case main
        case login

        // computed property returns the corresponding filename for each storyboard
        var filename: String {
            return rawValue.capitalized
        }
    }
}

extension UIStoryboard {

    // initialize the correct storyboard based each enum case
    convenience init(type: StoryType, bundle: Bundle? = nil) {
        self.init(name: type.filename, bundle: bundle)
    }


    // We no longer have to optionally unwrap the initial view controller and instead can use our convenience class method for getting a reference to the initial view controller of a storyboard. And its type safe. 
    static func initialViewController(for type: StoryType) -> UIViewController {
        let storyboard = UIStoryboard(type: type)
        guard let initialViewController = storyboard.instantiateInitialViewController() else {
            fatalError("Couldn't instantiate initial view controller for \(type.filename) storyboard.")
        }
        
        return initialViewController
    }
}
