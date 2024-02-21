//
//  SettingsTableTableViewController.swift
//  WJScheduleApp
//
//  Created by Magino, Hannah K (Student) on 2/19/24.
//

import UIKit

class SettingsTableTableViewController: UITableViewController {

    @IBOutlet weak var darkModeSwitch: UISwitch!
    
    @IBOutlet weak var darkModeCell:
    UITableViewCell!
    @IBOutlet weak var termsAndCondCell: UITableViewCell!
    
    @IBOutlet weak var dataLocationCell: UITableViewCell!
    
    @IBOutlet weak var languageCell: UITableViewCell!
    
    @IBOutlet var settingsTableView: UITableView!
    
    
  
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    

    @IBAction func darkModeActivated(_ sender: UISwitch) {
        if(darkModeSwitch.isOn == false){
            return
        }else{
        
            
            view.backgroundColor = UIColor(hue: 0.3861, saturation: 0.68, brightness: 0.23, alpha: 1.0)
            darkModeCell.backgroundColor = UIColor(hue: 0.3861, saturation: 0.68, brightness: 0.23, alpha: 1.0)
        
            dataLocationCell.backgroundColor = UIColor(hue: 0.3861, saturation: 0.68, brightness: 0.23, alpha: 1.0)
            languageCell.backgroundColor = UIColor(hue: 0.3861, saturation: 0.68, brightness: 0.23, alpha: 1.0)
            
            termsAndCondCell.backgroundColor = UIColor(hue: 0.3861, saturation: 0.68, brightness: 0.23, alpha: 1.0)
            
            settingsTableView.separatorColor = .white
            
            let header = settingsTableView as! UITableViewHeaderFooterView
            header.textLabel?.textColor = UIColor.white
            
            

        }
    }
    
//    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
