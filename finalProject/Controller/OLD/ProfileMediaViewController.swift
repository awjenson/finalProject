//
//  ProfileMediaViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/7/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import WebKit

class ProfileMediaViewController: UIViewController {


    @IBOutlet weak var mediaWebView: WKWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        embedVideoYoutube(youtubeVideoId: "Jp5YYrb6MxM")

    }

    func embedVideoYoutube(youtubeVideoId: String) {
        //set the data here, customize cell
        let mediaURL = NSURL(string: "https://www.youtube.com/watch?v=e1KJQs0frbM")

        let requestObj = URLRequest(url: mediaURL! as URL)

        mediaWebView.load(requestObj)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
