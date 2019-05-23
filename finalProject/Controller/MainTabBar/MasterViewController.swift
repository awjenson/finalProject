//
//  MasterViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 2/26/19.
//  Copyright © 2019 Andrew Jenson. All rights reserved.
//

import UIKit
import ChameleonFramework

//Source: https://cocoacasts.com/managing-view-controllers-with-container-view-controllers/

class MasterViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!

    let formatter = DateFormatter()
    let date = Date()
    let calendar = Calendar.current

    override func viewWillAppear(_ animated: Bool) {

        navigationController?.navigationBar.barTintColor = UIColor.init(hexString: "FFF1E5", withAlpha: 1)

        for view in self.navigationController?.navigationBar.subviews ?? [] {
            let subviews = view.subviews
            if subviews.count > 0, let label = subviews[0] as? UILabel {
                label.font = UIFont.systemFont(ofSize: 25, weight: .thin)
                label.text = setupGreeting()
            }
        }
    }

    func setupGreeting() -> String {

        let hour = calendar.component(.hour, from: date)
        var greeting = ""

        switch hour {
        case 0...4:
            greeting = "Good Evening"
        case 5...8:
            greeting = "Rise and Shine"
        case 9...11:
            greeting = "Good Morning"

        case 12...17:
            greeting = "Good Afternoon"
        case 18...24:
            greeting = "Good Evening"

        default:
            greeting = "Hello"
        }

        return greeting
    }



    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()

        
    }

    private func setupView() {
        setupSegmentedControl()

        updateView()
    }

    private func setupSegmentedControl() {
        // Add two segments to the segmented control and add the master view controller as a target to the segmented control
        segmentedControl.removeAllSegments()
        segmentedControl.insertSegment(withTitle: "What are you doing?", at: 0, animated: false)
        segmentedControl.insertSegment(withTitle: "How are you feeling?", at: 1, animated: false)
        segmentedControl.addTarget(self, action: #selector(selectionDidChange(_:)), for: .valueChanged)

        // Select First Segment
        segmentedControl.selectedSegmentIndex = 0
    }

    @objc func selectionDidChange(_ sender: UISegmentedControl) {
        updateView()
    }

    // Adding Child View Controllers with Lazy Properties
    private lazy var nowViewController: NowViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)

        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "NowViewController") as! NowViewController

        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)

        return viewController
    }()

    private lazy var journalViewController: JournalViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)

        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "JournalViewController") as! JournalViewController

        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)

        return viewController
    }()


    private func add(asChildViewController viewController: UIViewController) {
        //The implementation shows the steps that are required to add a child view controller to a container view controller

        // Add Child View Controller
        // the container view controller is responsible for the size and position of the child view controller's view
        addChild(viewController)

        // Add Child View as Subview
        view.addSubview(viewController.view)

        // Configure Child View
        viewController.view.frame = view.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        // Notify Child View Controller
        viewController.didMove(toParent: self)
    }

    //Removing a Child View Controller
    private func remove(asChildViewController viewController: UIViewController) {
        // Notify Child View Controller
        viewController.willMove(toParent: nil)

        // Remove Child View From Superview
        viewController.view.removeFromSuperview()

        // Notify Child View Controller
        viewController.removeFromParent()
    }

    //Updating View of Container View Controller
    //updating the user interface when the user taps a segment of the segmented control

    private func updateView() {
        if segmentedControl.selectedSegmentIndex == 0 {
            remove(asChildViewController: journalViewController)
            add(asChildViewController: nowViewController)
        } else {
            remove(asChildViewController: nowViewController)
            add(asChildViewController: journalViewController)
        }
    }





}
