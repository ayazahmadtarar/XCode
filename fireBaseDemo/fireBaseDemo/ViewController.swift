//
//  ViewController.swift
//  fireBaseDemo
//
//  Created by Ayaz Ahmad Tarar on 8/6/16.
//  Copyright © 2016 tarar. All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController {
    
    
    //let rootRef = FIRDatabase.database().referenceFromURL("https://demoproject-69aa0.firebaseio.com/")
   //
     
       override func viewDidLoad() {
        super.viewDidLoad()
        
        
      var rootRef = FIRDatabase.database().reference()
       //var rootRef = FIRDatabase.database().referenceFromURL("https://demoproject-69aa0.firebaseio.com/")
      //  rootRef.
        let message=[
        "text":"text2",
        "user":"user2"]
        rootRef.childByAutoId().setValue(message)
        rootRef.observeEventType(.ChildAdded) { (snapshot) in
            print(snapshot.value)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

