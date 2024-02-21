//
//  ScheduleViewController.swift
//  WJScheduleApp
//
//  Created by Magino, Hannah K (Student) on 1/7/24.
//

import UIKit
import WebKit

class ScheduleViewController: UIViewController {

    @IBOutlet weak var date: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        date.text = printDate()


    }
    
    func printDate() -> String{
        let dateFormatter = DateFormatter()
        
       
        
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        
        let formattedDate = dateFormatter.string(from: Date())

        
        return " \(formattedDate)"
        
        
        
    }
    
    
    
    
    


}
