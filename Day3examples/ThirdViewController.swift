//
//  ThirdViewController.swift
//  Day3examples
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    @IBOutlet weak var countrynamelist: UITableView!
    var countryName = ["Afganistan", "Canada", "UK", "USA", "India", "Russia"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ThirdViewController : UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
   func numberofSections(in countrynamelist : UITableView) -> Int {
       return 1
    }
    func tableView(_ countrynamelist : UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = countrynamelist.dequeueReusableCell(withIdentifier: "countryName")
        cell?.textLabel?.text = countryName[indexPath.row]
        return cell!
        
    }
}
