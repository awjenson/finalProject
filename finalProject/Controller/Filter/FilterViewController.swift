//
//  FilterViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/24/20.
//  Copyright © 2020 Andrew Jenson. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {

    @IBOutlet weak var relationshipControl: UISegmentedControl!
    @IBOutlet weak var exerciseControl: UISegmentedControl!
    @IBOutlet weak var jobControl: UISegmentedControl!
    @IBOutlet weak var parentControl: UISegmentedControl!
    @IBOutlet weak var sideHustleControl: UISegmentedControl!

    @IBOutlet weak var ageControl: UISegmentedControl!

    let defaultIndex = 0

    //User Defaults
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        relationshipControl.selectedSegmentIndex = defaultIndex
//        parentControl.selectedSegmentIndex = defaultIndex
        jobControl.selectedSegmentIndex = defaultIndex
        exerciseControl.selectedSegmentIndex = defaultIndex
        sideHustleControl.selectedSegmentIndex = defaultIndex
//        ageControl.selectedSegmentIndex = defaultIndex

        //Check for user data
        relationshipControl.selectedSegmentIndex = defaults.integer(forKey: relationshipKey)

//        parentControl.selectedSegmentIndex = defaults.integer(forKey: parentKey)

        jobControl.selectedSegmentIndex = defaults.integer(forKey: jobKey)

        exerciseControl.selectedSegmentIndex = defaults.integer(forKey: exerciseKey)

        sideHustleControl.selectedSegmentIndex = defaults.integer(forKey: sideHustleKey)

//        ageControl.selectedSegmentIndex = defaults.integer(forKey: ageKey)

        


        // Do any additional setup after loading the view.
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        if #available(iOS 13.0, *) {
            return .darkContent
        } else {
            // Fallback on earlier versions
            return .default
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func segueToIntroVC() {
        // return back to main/intro VC
        performSegue(withIdentifier: "Back", sender: self)
    }

    let relationshipKey = "Relationship"
    let jobKey = "Job"
    let parentKey = "Parent"
    let exerciseKey = "Exercise"
    let sideHustleKey = "SideHustle"
    let ageKey = "Age"

    @IBAction func relationshipControlTapped(_ sender: Any) {

        switch relationshipControl.selectedSegmentIndex
        {
        case 0:
            //single
            defaults.set(0, forKey: relationshipKey)

        case 1:
            //relationship
            defaults.set(1, forKey: relationshipKey)

        default:
            //single
            defaults.set(0, forKey: relationshipKey)
        }

    }

    //MARK: - IB ACTIONS

    //https://www.hackingwithswift.com/example-code/uikit/how-to-generate-haptic-feedback-with-uifeedbackgenerator
    @objc func tapped() {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
    }


    @IBAction func exerciseControlTapped(_ sender: Any) {

        tapped()
        switch exerciseControl.selectedSegmentIndex
        {
        case 0:
            //workout
            defaults.set(0, forKey: exerciseKey)
            print(defaults.integer(forKey: exerciseKey))
        case 1:
            //running
            defaults.set(1, forKey: exerciseKey)
            print(defaults.integer(forKey: exerciseKey))
        case 2:
            //yoga
            defaults.set(2, forKey: exerciseKey)
            print(defaults.integer(forKey: exerciseKey))
        default:
            //running
            defaults.set(0, forKey: exerciseKey)
        }
    }


    @IBAction func jobControlTapped(_ sender: Any) {

        tapped()
        switch jobControl.selectedSegmentIndex
        {
        case 0:
            //school
            defaults.set(0, forKey: jobKey)
        case 1:
            //work
            defaults.set(1, forKey: jobKey)
        default:
            //school
            defaults.set(0, forKey: jobKey)
        }

    }


    @IBAction func parentControlTapped(_ sender: Any) {

        tapped()
        switch parentControl.selectedSegmentIndex
        {
        case 0:
            //no kids
            defaults.set(0, forKey: parentKey)
        case 1:
            //parent
            defaults.set(1, forKey: parentKey)
        default:
            //no kids
            defaults.set(0, forKey: parentKey)
        }
    }


    @IBAction func sideHustleControlTapped(_ sender: Any) {

        tapped()
        switch sideHustleControl.selectedSegmentIndex
        {
        case 0:
            //Startup
            defaults.set(0, forKey: sideHustleKey)
        case 1:
            //Film
            defaults.set(1, forKey: sideHustleKey)
        case 2:
            //Writer
            defaults.set(2, forKey: sideHustleKey)
        default:
            //Startup
            defaults.set(0, forKey: sideHustleKey)
        }
    }

    @IBAction func ageControlTapped(_ sender: Any) {

        tapped()
        switch ageControl.selectedSegmentIndex
        {
        case 0:
            //Teens
            defaults.set(0, forKey: ageKey)
        case 1:
            //20s
            defaults.set(1, forKey: ageKey)
        case 2:
            //30s
            defaults.set(2, forKey: ageKey)
        case 3:
            //40s
            defaults.set(2, forKey: ageKey)
        case 4:
            //50s
            defaults.set(2, forKey: ageKey)
        case 5:
            //60s+
            defaults.set(2, forKey: ageKey)
        default:
            //Startup
            defaults.set(0, forKey: ageKey)
        }
    }




}
