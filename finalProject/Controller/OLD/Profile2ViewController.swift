//
//  Profile2ViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/6/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit







// Add table view protocols
class Profile2ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var profileTableView: UITableView!

    var tableData = ["Australia", "Tony Lived There", "It's a big Island", "Canada", "North of the US", "It's Cold", "China", "Lots of people live there", "Located in Asia", "India", "Also Located in Asia", "Bharat is from there", "United States of America", "My home country", "Has 50 States"] as [Any]


    let profileHeaders = ["Daily Routine", "Vision", "One Year Goals", "Five Year Goals", "Life Goals"]

    let videos = ["c23OBLQFcCw","bo6_iIOdG7c","PwGXhJAYdDQ","Co6eDUAi2OQ","HaHKLyGA9Jw"]

    override func viewDidLoad() {
        super.viewDidLoad()



        // assign the VC to the data source and delegate properties of the table view. So that table view can ask its data source and delegate (this VC) questions, like how many rows or sections
        profileTableView.dataSource = self
        profileTableView.delegate = self


    }

    override func viewWillAppear(_ animated: Bool) {
        // set to adjust row height of table view
        profileTableView.estimatedRowHeight = 44 // xCode's default
        profileTableView.rowHeight = UITableViewAutomaticDimension



    }




    // MARK: - Table View Date Source Methods

    func numberOfSections(in tableView: UITableView) -> Int {
        return profileHeaders.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return profileHeaders[section]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // Get the width of the screen to calculate the height of the row



        return (self.view.frame.size.width / 320) * 180 / 2
    }







    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! Profile2TableViewCell1
//            let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell1")
            //set the data here

            let userData = ["My daily routine is to wake up, go to the gym, meditate, listen to a motivational video, drink a protein shake, eat oatmeal, say my daily mantra.", "My vision is to help improve the lives of millions of people through my app and films.", "My short term goal is to finish my app and write a screenplay, and move to LA.", "My 5 year goals are to grow my app to become the most popular app in the world because it's one of the few apps that actually helps people live a better life. I also want to make films.", "My life goal is to build a media and technology empire and have my films premeired in Hollywood, Sundance, Tribeca, Cannes, and Berlin."]




            cell.userTextView.layer.borderColor = UIColor.darkGray.cgColor
            cell.userTextView.layer.borderWidth = 1

            cell.userTextView.text = userData[indexPath.row]
            return cell
        }
        else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! Profile2TableViewCell2

            //set the data here
            cell.quoteTextView.isEditable = false
            cell.quoteTextView.text = "\"Whether you think you can or you think you can't, you're right.\""
            cell.sourceLabel.text = "Henry Ford, Founder of Ford"

            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! Profile2TableViewCell3


            // Construct the video thumbnail url
            print("videos: \(videos)")
            print("videos[indexPath.row]: \(videos[indexPath.row])")


            let videoThumbnailUrlString = "https://i1.ytimg.com/vi/" + videos[indexPath.row] + "/maxresdefault.jpg"

            // Create an NSURL object
            let videoThumbnailUrl = URL(string: videoThumbnailUrlString)

            if videoThumbnailUrl != nil {
                // Create an NSURLRequest object

                let request = URLRequest(url: videoThumbnailUrl!)

                // Create an NSURLSession
                let session = URLSession.shared

                // Create a datatask and pass in the request
                let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) in

                    print("videoThumbnailUrlString: \(videoThumbnailUrlString)")

                    print("error: \(error.debugDescription)")

                    // Block in Background Thread, update UI on Main Thread
                    DispatchQueue.main.async {

                        cell.mediaTitleLabel.text = "Watch this: Keys to building a daily routine"
                        cell.mediaSourceLabel.text = "by Tom Harrison"

                        // Get a reference to the imageView element of the cell
                        let imageView = cell.viewWithTag(1) as! UIImageView

                        // Create an image object from the data and assign it to the imageView
                        imageView.image = UIImage(data: data!)
                    }
                })
                dataTask.resume()
            }

            return cell
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        // removes gray highlight
        profileTableView.deselectRow(at: indexPath, animated: true)
    }




}
