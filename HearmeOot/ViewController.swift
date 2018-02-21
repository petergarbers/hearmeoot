//
//  ViewController.swift
//  HearmeOot
//
//  Created by Peter Garbers on 2/20/18.
//  Copyright © 2018 Peter Garbers. All rights reserved.
//

import UIKit
import TwitterKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        twitterLogin()
        
//        let defaults = UserDefaults.standard
//        if (defaults.object(forKey: "name") == nil) {
//            // Passing in userdefaults like this is ugly
//            twitterLogin()
//        } else {
//            print("NOTHING TO SEE HERE")
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func twitterLogin() {
        let logInButton = TWTRLogInButton(logInCompletion: { session, error in
            if (session != nil) {
                print("I did a thing");
//                print("signed in as \(session.userName)");
            } else {
                print("i failed");
//                print("error: \(error.localizedDescription)");
            }
        })
        logInButton.center = self.view.center
        self.view.addSubview(logInButton)
    }


}

