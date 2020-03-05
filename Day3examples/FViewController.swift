//
//  ViewController.swift
//  Day3examples
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class FViewController: UIViewController {

    
    
    @IBAction func btnirs(_sender: UIButton)
    {
        UserDefaults.standard.set(txtField.text, forKey: "name")
    }
    
    @IBOutlet weak var txtField: UITextField!
    
    @IBAction func btnfetch(_ sender: UIButton)
    {
        let ud = UserDefaults.standard
        let name = ud.string(forKey: "name")
        labelname.text = name
        
    }
    
    
    
    
    
    @IBOutlet weak var labelname: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
       
        
    }


}

