//
//  FilterViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/24/20.
//  Copyright © 2020 Andrew Jenson. All rights reserved.
//

import UIKit
import SafariServices // to display webview


//    class ChecklistItem {
//
//        //tutorial video: https://www.youtube.com/watch?v=1xmz2Itu3yA
//        let title: String
//        var isChecked: Bool = false
//
//        //init, because we set isChecked to false we don't need to declare it in init
//        init(title: String) {
//            self.title = title
//        }
//
//
//    } //ChecklistItem


class FilterViewController: UIViewController {

    //Checklist
    //use .compactMap converts an array of strings into a checklist item for each string in the array
//    let checklistItems: [ChecklistItem] = [
//        "Get milk",
//        "Go on long run",
//        "Make YouTube videos",
//        "Pretend to be productive"
//    ].compactMap({
//        ChecklistItem(title: $0)
//    })

    //MARK: - TEST FOR HEADER UPDATE
    var sectionHeaderViews: [UIView] = []
    var sectionHeaderLabels: [UILabel] = []
    var completedTipCounts: [Int] = [] // Array to store completed tip counts for each section
    var totalTipCounts: [Int] = [] // Array to store completed tip counts for each section

    //MARK: - Parameters

    var tips: [Tip] = []
    var topics: [Topic] = [] // array of topics
    var topicsArrays: [Topics] = [] // Array of [array of topics]
    var twoDimensionalArray: [Topic] = []


    var currentIndex: Int = -1 //initial integer since UIButton.index start at 0

    func appendFiveTopics(_ topics0: Topics, _ topics1: Topics, _ topics2: Topics, _ topics3: Topics, topicsNow: Topics) {

        topicsArrays = [topics0, topics1, topics2, topics3,
                        topicsNow]

       //set array that displays in initial tableview
        twoDimensionalArray = topicsNow.topics
    }

    func getTotalTipCountsAndCompletedTipCounts(_ twoDiemsionalArray: [Topic]) {
        for e in twoDiemsionalArray {
            
        }
    }

    func flipButton(at indexNumber: Int, on button: UISegmentedControl) {

        // reset buttons to original UI display


        // Identify what button was tapped

        if currentIndex == indexNumber {

            print("A - Previously Tapped")

            // Selected button previously tapped, return to Now Tips
            // Check if this button has been tapped just prior
            twoDimensionalArray = []

            //NOW Topics are located in the 4th position of topicsArrays
            twoDimensionalArray = topicsArrays[4].topics

            // Unselected
            performUIUpdatesOnMain {

            }

            currentIndex = -1
        } else {

            print("B - Newly Tapped")

            // select button NOT previously tapped
            // gray out selected button
            // display selected topic tips
            twoDimensionalArray = []

            twoDimensionalArray = topicsArrays[indexNumber].topics

            // Selected
            performUIUpdatesOnMain {

            }

            currentIndex = indexNumber
        }// end of else

        performUIUpdatesOnMain {
            self.filterTableView.reloadData()
        }
    }

    func appendTipsArrayBasedOnTopicSelected(_ index: Int) {
        tips = []
        twoDimensionalArray = []

        // Take selected index in topics array and subtract 1 because we start with zero
        let counter = (topicsArrays[index].topics.count - 1)

        print("counter: \(counter)")

        for item in 0...counter {
            tips.append(topics[index].tip[item])
        }
    }


    //MARK: IBOutlet

    //Buttons/UISegmentControls
    @IBOutlet var filterTopicButtons: [UISegmentedControl]!

    @IBOutlet weak var genderControl: UISegmentedControl!
    @IBOutlet weak var relationshipControl: UISegmentedControl!
    @IBOutlet weak var parentControl: UISegmentedControl!
    @IBOutlet weak var jobControl: UISegmentedControl!
    @IBOutlet weak var exerciseControl: UISegmentedControl!
    @IBOutlet weak var debtControl: UISegmentedControl!

    @IBOutlet weak var startupControl: UISegmentedControl!
    @IBOutlet weak var filmControl: UISegmentedControl!
    //Not used
    @IBOutlet weak var ageControl: UISegmentedControl!

    //Tableview
    @IBOutlet weak var filterTableView: UITableView!
    @IBOutlet weak var filterTableViewHeader: UIView!
    @IBOutlet weak var filterTableViewFooter: UIView!
    @IBOutlet weak var filterHeaderView: UIView!

    let defaultIndex = 0


    //User Defaults
    let defaults = UserDefaults.standard

    let font = UIFont.systemFont(ofSize: 8)



    override func viewDidLoad() {
        super.viewDidLoad()


        //setup tableview
        setupUI()

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

//        ageControl.selectedSegmentIndex = defaults.integer(forKey: ageKey)

        //Font color of segment controls
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10)]
        UISegmentedControl.appearance().setTitleTextAttributes(titleTextAttributes, for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes(titleTextAttributes, for: .normal)
        

        // Do any additional setup after loading the view.

        let dictionary = defaults.dictionaryRepresentation()
        print("User Defaults Dictionary:")
        for (key, value) in dictionary {
            print("\(key): \(value)")
        }


        //TEST


        // Reload the table view to update the section headers
        filterTableView.reloadData()
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        if #available(iOS 13.0, *) {
            return .darkContent
        } else {
            // Fallback on earlier versions
            return .default
        }
    }


    
    // MARK: - Methods

    //Health, Financial, Career, Relationship, Startup, Film, Podcast
    func setupTodoLists() -> Topics {

        var selectedTopic: Topics!

        selectedTopic = Topics(title: wealthTitle, icon: Constants.Icon.wealth, topics: [health_todo_Topic, wealth_todo_Topic, startupTodoTopic()])

        return selectedTopic
    }

    func setupUI() {

        //TODO: Consolidate Todos
        
        //used for Checklist
        //First 4 Topics are NOT used
        appendFiveTopics(wealthTodoTopics(), wealthTodoTopics(), startupTopics(), filmTopics(), topicsNow: setupTodoLists())


        // set header of UITableView
        filterTableViewHeader.frame.size.height = 360


        // set footer
        filterTableViewFooter.frame.size.height = 200


        filterTableViewSetup()
    }

    func filterTableViewSetup() {

        filterTableView.dataSource = self
        filterTableView.delegate = self
        // set estimated row height (needed for auto row height size)
        filterTableView.rowHeight = UITableView.automaticDimension
        filterTableView.estimatedRowHeight = 44
        filterTableView.separatorStyle = .none
    }

    private func sizeFooterToFit() {
        if let footerView = filterTableView.tableFooterView {
            footerView.setNeedsLayout()
            footerView.layoutIfNeeded()

            let height = footerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
            var frame = footerView.frame
            frame.size.height = height
            footerView.frame = frame

            filterTableView.tableFooterView = footerView
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


    @IBAction func returnToTopTapped(_ sender: Any) {
        tapped()
        scrollToTopTableView()
    }


    @IBAction func feedbackYouButtonTapped(_ sender: Any) {
        tapped()
        goToSourceURL(url: Constants.Website.rizeFormURL)
    }

    //    // Call this inside UIButton to scroll to top
    func scrollToTop(){
        DispatchQueue.main.async {
            let indexPath = IndexPath(row: self.tips.count-1, section: 0)
            self.filterTableView.scrollToRow(at: indexPath, at: .top, animated: true)
        }
    }

    func scrollToTopTableView() {
        performUIUpdatesOnMain {
            // removed animation because it was too slow
            self.filterTableView.setContentOffset(.zero, animated: false)
        }
    }


    //MARK: USER INPUTS

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

    //Link IBAction hobbyTopicButtonTapped to all topic buttons
    @IBAction func filterTopicButtonTapped(_ sender: UISegmentedControl) {

        tapped()

        //IBAction linked to all RoundCircle Buttons
        if let topicNumber = filterTopicButtons.firstIndex(of: sender) {

            flipButton(at: topicNumber, on: sender)

        } else {
            print("ARE WE IN ELSE?")
            performUIUpdatesOnMain {
                self.createAlert(title: "ERROR", message: "Could not load selected tips.")
            }
        }
    }





}


// MARK: - Table View Methods

extension FilterViewController: UITableViewDataSource, UITableViewDelegate {



    //SECTION HEADER
    //https://www.hackingwithswift.com/example-code/uikit/how-to-add-a-section-header-to-a-table-view

    func titleColor(number: Int) -> UIColor {
        switch number {
        case 0:
            return UIColor.purple
        case 1:
            return UIColor.purple
        case 2:
            return UIColor.purple
        default:
            return UIColor.purple
        }
    }






    //SECTION

    //TEST




    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 20))
        headerView.backgroundColor = Constants.RizeBackgroundColor.rizeAppUIColor


        //twoDimensionalArray[section].tip[section].doneType




        //Display section title text
        let label = UILabel()
        label.frame = CGRect.init(x: 26, y: 15, width: headerView.frame.width-10, height: headerView.frame.height)
        label.layer.cornerRadius = 8
        label.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        label.textColor = titleColor(number: section).darker()
        label.text = displayHeaderLabelText(for: section)
        headerView.addSubview(label)

        //TEST
        //sectionHeaderViews.append(headerView)
        //updateHeaderText(for: section)

        sectionHeaderLabels.append(label)


        return headerView
    }



    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        print("twoDimensionalArray.count: \(twoDimensionalArray.count)")
        return twoDimensionalArray.count
    }


    //CELL

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return twoDimensionalArray[section].tip.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        /* In the future, you could create multiple subviews and then use a switch statement to display data for each subview
         https://www.makeschool.com/online-courses/utorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/improving-the-ui */

        // Whatever tip is at each row
        let tip = twoDimensionalArray[indexPath.section].tip[indexPath.row]

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FilterTableViewCell

        // cell's bottom line UI
        cell.layoutMargins = UIEdgeInsets.zero

        // configure cell in UITableViewCell file

        cell.configureCell(tip: tip, section: indexPath.section) // Pass the section to the configureCell method

        cell.filterHeaderLabel.textColor = titleColor(number: indexPath.section)

        //Tell UITableViewCell who it's delegate is
        //Give the boss the intern
        cell.delegate = self  //self is the ProfileVC

        return cell
    }

    //CHECKLIST ONLY
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

    }


}

// MARK: - Table View Cell Methods

extension FilterViewController: FilterTableViewCellDelegate {


    func goToSourceURL(url: String) {
        // get the URL from the delegate and presents in Safari VC
        let sourceURL = URL(string: url)!
        let safariVC = SFSafariViewController(url: sourceURL)
        safariVC.dismissButtonStyle = .close
        safariVC.preferredBarTintColor = Constants.RizeBackgroundColor.rizeAppUIColor
        safariVC.preferredControlTintColor = UIColor.blue
        present(safariVC, animated: true, completion: nil)
    }

    func goToActivityView(header: String, title: String, body: String) {
        let rizeLogo = UIImage(named: "AppIcon")

        let activityVC = UIActivityViewController(activityItems: ["Tip: \(header)\n\n","\(title)\n\n", "\(body)\n\n","For more tips, download 'Rize: Smarter Decisions Now' on Apple's App Store", rizeLogo as Any], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view

        self.present(activityVC, animated: true, completion: nil)
    }





    //TEST
    //TEST
    func getCompletedTipCount(for section: Int) -> Int {

        let completedTips = twoDimensionalArray[section].tip.filter { $0.doneType }
        print("getCompletedTipCount for section", section, ": ", completedTips.count)

        return completedTips.count
    }



    //Used in TableViewHeader
    func buttonTappedInSection(_ section: Int) {
        print("buttonTappedInSection(): \(section)")

        // Update the completed tip count for the section
        //completedTipCounts[section] = getCompletedTipCount(for: section)

        //update twoDimensionArray
        appendFiveTopics(wealthTodoTopics(), wealthTodoTopics(), startupTopics(), filmTopics(), topicsNow: setupTodoLists())


        // Update the header label text
        sectionHeaderLabels[section].text = displayHeaderLabelText(for: section) + "*"

    }



    func displayHeaderLabelText(for section: Int) -> String {

        let completedCount = getCompletedTipCount(for: section)
        let totalCount = twoDimensionalArray[section].tip.count
        let completedAndTotalCount = "\(completedCount) / \(totalCount)"

        return twoDimensionalArray[section].title.uppercased()
    }




}


//Press cell button

//Update header text based on re-count of doneBool's count
