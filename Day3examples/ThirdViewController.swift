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
    var countryName : [Country] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryName = DataStorage.getInstance().getAllCountries()

        // Do any additional setup after loading the view.
    }
    func loadCountries()
    {
        countryName.append(Country(name: "India", capital: "Delhi", flag:#imageLiteral(resourceName: "pic1") ))
        countryName.append(Country(name: "Afganistan", capital: "kabul", flag:#imageLiteral(resourceName: "pic2") ))
        
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
        return countryName.count
    }
    
    func numberOfSections(in tableView : UITableView) -> Int
   {
       return 1
    }
    func tableView(_ countrynamelist : UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = countrynamelist.dequeueReusableCell(withIdentifier: "countryName")
        let country = countryName[indexPath.row]
        cell?.textLabel?.text = country.name
        cell?.detailTextLabel?.text = country.capital
        cell?.imageView?.image = country.flag
        return cell!
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let c = countryName[indexPath.row]
        print(c)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100.0)
    }
}
