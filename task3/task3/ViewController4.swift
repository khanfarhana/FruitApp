//
//  ViewController4.swift
//  task3
//
//  Created by TRYCATCH CLASSES on 19/02/21.
//

import UIKit
import WebKit
class ViewController4: UIViewController,WKUIDelegate,WKNavigationDelegate {

    @IBAction func backBtn(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController1")

        UIApplication.shared.windows[0].rootViewController = vc!
    }
    @IBOutlet weak var webV: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
