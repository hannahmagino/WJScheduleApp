//
//  UpcomingEventsViewController.swift
//  WJScheduleApp
//
//  Created by Magino, Hannah K (Student) on 1/7/24.
//

import UIKit
import WebKit

class UpcomingEventsViewController: UIViewController, WKUIDelegate {
    var webView: WKWebView!
    
    override func loadView(){
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .init(x: 10, y: 10, width: 10, height: 10))
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
                let myURL = URL(string: "https://www.montgomeryschoolsmd.org/schools/wjhs/calendar/")
                let myRequest = URLRequest(url: myURL!)
                webView.load(myRequest)
             

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
