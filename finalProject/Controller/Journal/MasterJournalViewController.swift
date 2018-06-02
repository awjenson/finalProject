//
//  MasterJournalViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/22/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

/*
 https://cocoacasts.com/managing-view-controllers-with-container-view-controllers/
 */
// Remember that a container view controller is responsible for sizing and positioning the view of the child view controller it manages. The child view controller is the only view controller in charge of managing the views of its view hierarchy. In other words, the container view controller should only access the child view controller's view.
class MasterJournalViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var segmentedControl: UISegmentedControl!

    // MARK: - Properties

    // We use lazy properties because it instantiates the child view controllers when they are needed. If the user never taps the Sessions segment of the segmented control, then there is no need to instantiate an instance of the SessionsViewController class.
    private lazy var journalViewController: JournalViewController = {
        // load storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)

        var viewController = storyboard.instantiateViewController(withIdentifier: "JournalViewController") as! JournalViewController

        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)

        return viewController
    }()

    private lazy var counterViewController: CounterViewController = {

        // load storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)

        var viewController = storyboard.instantiateViewController(withIdentifier: "CounterViewController") as! CounterViewController

        self.add(asChildViewController: viewController)

        return viewController
    }()


    // We only add the child view controller's view to the view of the master view controller.
    fileprivate func add(asChildViewController viewController: UIViewController) {
        // Add Child View as Subview
        // The container view controller is responsible for the size and position of the child view controller's view. The view hierarchy of the child view controller continues to be the responsibility of the child view controller, though.
        view.addSubview(viewController.view)

        // Configure Child View
        viewController.view.frame = view.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }

    private func remove(asChildViewController viewController: UIViewController) {
        // Notify Child View Controller, Pass in the Container View Controller as an Argument
        // We pass nil as the argument. This indicates that the child view controller is about to be removed from the container view controller.
        viewController.willMove(toParentViewController: nil)

        // Remove Child View From Superview
        // The child view controller's view is removed from the view hierarchy of the container view controller
        viewController.view.removeFromSuperview()

        // Notify Child View Controller
        // That it is removed from the container view controller
        viewController.removeFromParentViewController()
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }


    func setupView() {

        // Helper method
        setupSegmentedControl()

        updateView()
    }

    func setupSegmentedControl() {

        // Configure Segmented Control with two segments
        segmentedControl.removeAllSegments()
        segmentedControl.insertSegment(withTitle: "Journal", at: 0, animated: false)
        segmentedControl.insertSegment(withTitle: "Routine", at: 1, animated: false)
        segmentedControl.addTarget(self, action: #selector(selectionDidChange(_:)), for: .valueChanged)

        // Select First Segment
        segmentedControl.selectedSegmentIndex = 0
    }

    @objc func selectionDidChange(_ sender: UISegmentedControl) {
        // helper method
        updateView()
    }

    // Updating User Interface when the user taps a segment of the segmented control.
    private func updateView() {

        // Because the master view controller keeps a reference to the summary view controller and sessions view controller, these view controllers are not deallocated when they are removed from the container view controller. In other words, they are only instantiated once and, more importantly, they keep their state even if they are not visible.
        if segmentedControl.selectedSegmentIndex == 0 {
            remove(asChildViewController: counterViewController)
            add(asChildViewController: journalViewController)
        } else {
            remove(asChildViewController: journalViewController)
            add(asChildViewController: counterViewController)
        }
    }

}
