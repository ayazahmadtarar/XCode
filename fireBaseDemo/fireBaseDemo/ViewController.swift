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
    
    
    @IBOutlet var email: UITextField!
    
    
    @IBOutlet var password: UITextField!
    
    
    
    @IBAction func FacebookLogin(sender: AnyObject) {
        
         
    }
    
    @IBAction func login(sender: AnyObject) {
        FIRAuth.auth()?.signInWithEmail(email.text!, password: password.text!, completion: { (user, error) in
            if(error != nil)
            {
            print("incorrect"+String(error))
            }
            else{
               print("successfully loged in with user \(user?.uid)")
            }
        })
       
    }
    
    @IBAction func signup(sender: AnyObject) {
        
        
        FIRAuth.auth()?.createUserWithEmail(email.text!, password:self.password.text!, completion: { (signupUser, signupError) in
        
            if signupError != nil
            {
           print("Error in creation"+String(signupError))
            
            }
            else
            {
             
        print("user created sucessfully")
            
            }
        })
        
}
    
    
     
       override func viewDidLoad() {
        super.viewDidLoad()
        
        
       var rootRef = FIRDatabase.database().reference()
        //let rootRef = FIRDatabase.database().referenceFromURL("https://demoproject-69aa0.firebaseio.com/")
       //var rootRef = FIRDatabase.database().referenceFromURL("https://demoproject-69aa0.firebaseio.com/")
      //  rootRef.
        let message=[
        "text":"text2",
        "user":"user2"]
      //  rootRef.childByAutoId().setValue(message)
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

