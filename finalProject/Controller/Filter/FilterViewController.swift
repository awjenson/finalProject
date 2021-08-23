//
//  FilterViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/24/20.
//  Copyright © 2020 Andrew Jenson. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {

    @IBOutlet weak var genderControl: UISegmentedControl!
    @IBOutlet weak var relationshipControl: UISegmentedControl!
    @IBOutlet weak var parentControl: UISegmentedControl!
    @IBOutlet weak var jobControl: UISegmentedControl!
    @IBOutlet weak var exerciseControl: UISegmentedControl!
    @IBOutlet weak var debtControl: UISegmentedControl!

    @IBOutlet weak var startupControl: UISegmentedControl!
    @IBOutlet weak var filmControl: UISegmentedControl!




    @IBOutlet weak var ageControl: UISegmentedControl!

    let defaultIndex = 0


    //User Defaults
    let defaults = UserDefaults.standard

    let font = UIFont.systemFont(ofSize: 8)


    override func viewDidLoad() {
        super.viewDidLoad()

//        genderControl.selectedSegmentIndex = defaultIndex
        relationshipControl.selectedSegmentIndex = defaultIndex
//        parentControl.selectedSegmentIndex = defaultIndex
        jobControl.selectedSegmentIndex = defaultIndex
        exerciseControl.selectedSegmentIndex = defaultIndex
        debtControl.selectedSegmentIndex = defaultIndex


        startupControl.selectedSegmentIndex = defaultIndex
        filmControl.selectedSegmentIndex = defaultIndex

//        ageControl.selectedSegmentIndex = defaultIndex

        //Check for user data


//        genderControl.selectedSegmentIndex = defaults.integer(forKey: genderKey)


        relationshipControl.selectedSegmentIndex = defaults.integer(forKey: relationshipKey)

        parentControl.selectedSegmentIndex = defaults.integer(forKey: parentKey)

        jobControl.selectedSegmentIndex = defaults.integer(forKey: jobKey)

        exerciseControl.selectedSegmentIndex = defaults.integer(forKey: exerciseKey)

        debtControl.selectedSegmentIndex = defaults.integer(forKey: debtKey)

        startupControl.selectedSegmentIndex = defaults.integer(forKey: startupKey)

        filmControl.selectedSegmentIndex = defaults.integer(forKey: filmKey)

        filmControl.setTitleTextAttributes([NSAttributedString.Key.font: font], for: .normal)


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

    //MARK: - IB ACTIONS

    //https://www.hackingwithswift.com/example-code/uikit/how-to-generate-haptic-feedback-with-uifeedbackgenerator
    @objc func tapped() {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
    }

    let genderKey = "Gender"
    let relationshipKey = "Relationship"
    let jobKey = "Job"
    let parentKey = "Parent"
    let exerciseKey = "Exercise"
    let debtKey = "Debt"
    let startupKey = "Startup"
    let filmKey = "Film"
    let ageKey = "Age"

    @IBAction func genderControlTapped(_ sender: Any) {
        switch genderControl.selectedSegmentIndex
        {
        case 0:
            //Female
            defaults.set(0, forKey: genderKey)

        case 1:
            //Male
            defaults.set(1, forKey: genderKey)

        default:
            //Female
            defaults.set(0, forKey: genderKey)
        }
    }


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


    @IBAction func exerciseControlTapped(_ sender: Any) {

        tapped()
        switch exerciseControl.selectedSegmentIndex
        {
        case 0:
            //running
            defaults.set(0, forKey: exerciseKey)

        case 1:
            //yoga
            defaults.set(1, forKey: exerciseKey)

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


    @IBAction func debtControlTapped(_ sender: Any) {

        tapped()
        switch debtControl.selectedSegmentIndex
        {
        case 0:
            //no debt
            defaults.set(0, forKey: debtKey)
        case 1:
            //have debt
            defaults.set(1, forKey: debtKey)
        default:
            //no debt
            defaults.set(0, forKey: debtKey)
        }
    }


    @IBAction func startupControlTapped(_ sender: Any) {

        tapped()
        switch startupControl.selectedSegmentIndex
        {
        case 0:
            //Idea
            defaults.set(0, forKey: startupKey)
        case 1:
            //MVP
            defaults.set(1, forKey: startupKey)
        case 2:
            //Beta
            defaults.set(2, forKey: startupKey)
        case 3:
            //10+ Users
            defaults.set(3, forKey: startupKey)

        default:
            //Idea
            defaults.set(0, forKey: startupKey)
        }
    }


    @IBAction func filmControlTapped(_ sender: Any) {

        tapped()
        switch filmControl.selectedSegmentIndex
        {
        case 0:
            //Idea
            defaults.set(0, forKey: filmKey)
        case 1:
            //Script
            defaults.set(1, forKey: filmKey)
        case 2:
            //Pre-Prod
            defaults.set(2, forKey: filmKey)
        case 3:
            //Filming
            defaults.set(3, forKey: filmKey)
        case 4:
            //Editing
            defaults.set(4, forKey: filmKey)

        default:
            //Idea
            defaults.set(0, forKey: filmKey)
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
