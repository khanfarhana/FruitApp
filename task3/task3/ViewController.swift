//
//  ViewController.swift
//  task3
//
//  Created by TRYCATCH CLASSES on 19/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func orderbtn(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController2")
        present(vc!, animated: true, completion: nil)
    }
    @IBAction func rewardbtn(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController3")
        present(vc!, animated: true, completion: nil)
    }
    @IBAction func hoursBtn(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController4")
        present(vc!, animated: true, completion: nil)
    }
    @IBAction func findBtn(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController5")
        present(vc!, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

