//
//  ViewController.swift
//  PhoneCalling
//
//  Created by Laksh Purbey on 30/09/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_CallFavOne(_ sender: Any) {
        
        makeACall()
    }
    
    func makeACall() {
        guard let url = URL(string: "tel://\("9861001199")"),
            UIApplication.shared.canOpenURL(url) else { return }
        if #available(iOS 10, *) {
            UIApplication.shared.open(url)
        } else {
            UIApplication.shared.openURL(url)
        }
    }

    
}

