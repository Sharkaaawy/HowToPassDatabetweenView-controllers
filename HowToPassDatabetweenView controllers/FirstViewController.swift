//
//  FirstViewController.swift
//  HowToPassDatabetweenView controllers
//
//  Created by Mohamed on 1/18/18.
//  Copyright © 2018 Mohamed. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, getData {

    
    var passedBacked:String!
    
    @IBOutlet weak var FirstLabel: UILabel!
    @IBOutlet weak var FirstTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
     
    }

    @IBAction func changeBackground(_ sender: Any) {
        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func ScottyPressed(_ sender: Any) {
        performSegue(withIdentifier: "ToSecond", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToSecond"
        {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = FirstTextField.text!
            
            secondVC.delegate = self
        }
        
       
    }
    
    func sendDataBack(data: String) {
        FirstLabel.text = data
    }
    
    
    
}
