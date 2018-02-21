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
        
        let defaults = UserDefaults.standard
        if (defaults.object(forKey: "username") == nil) {
            // Passing in userdefaults like this is ugly
            twitterLogin(defaults: defaults)
        } else {
            print("NOTHING TO SEE HERE: \(String(describing: defaults.object(forKey: "username")))")
            switchScreen();
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Passing in user defaults is ugly
    func twitterLogin(defaults: UserDefaults) {
        let logInButton = TWTRLogInButton(logInCompletion: { session, error in
            if (session != nil) {
                print("signed in as \(String(describing: session?.userName))");
                defaults.setValue(session?.userName, forKey: "username")
            } else {
                print("error: \(String(describing: error?.localizedDescription))");
            }
        })
        logInButton.center = self.view.center
        self.view.addSubview(logInButton)
    }
    
    func switchScreen() {
        
//        let next:TweetViewController = TweetViewController()
//        self.present(next, animated: true, completion: nil)
    }
    

}

