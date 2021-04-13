//
//  ViewController5.swift
//  task3
//
//  Created by TRYCATCH CLASSES on 19/02/21.
//

import UIKit
import WebKit
class ViewController5: UIViewController,WKUIDelegate,WKNavigationDelegate {

    @IBOutlet weak var actInd: UIActivityIndicatorView!
    @IBOutlet weak var webV: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.google.co.in/maps/@19.244484,72.9814762,15z")
        let urlReq = URLRequest(url: url!)
        webV.load(urlReq)
        webV.uiDelegate = self
        webV.navigationDelegate = self
       
    }

    @IBAction func backBtn(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController1")

        UIApplication.shared.windows[0].rootViewController = vc!
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
