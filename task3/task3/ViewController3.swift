//
//  ViewController3.swift
//  task3
//
//  Created by TRYCATCH CLASSES on 19/02/21.
//

import UIKit
import WebKit
class ViewController3: UIViewController,WKUIDelegate,WKNavigationDelegate {

    @IBOutlet weak var actInd: UIActivityIndicatorView!
    @IBAction func backBtn(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController1")

        UIApplication.shared.windows[0].rootViewController = vc!
    }
    @IBOutlet weak var webV: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.yahoo.com")
        let urlReq = URLRequest(url: url!)
        webV.load(urlReq)
        // Do any additional setup after loading the view.
        webV.uiDelegate = self
        webV.navigationDelegate = self
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
    {
        print(" didStartProvisionalNavigation ")
        actInd.startAnimating()
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!)
    {
        actInd.stopAnimating()
    }
//    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error)
//    {
//
//    }
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error){
        print("fail\(error.localizedDescription)")
        actInd.stopAnimating()
        
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
