//
//  ViewController.swift
//  krmelinWeather
//
//  Created by Lukas Hrebik on 04.02.16.
//  Copyright © 2016 Lukas Hrebik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tempLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    var krmelinTemp: krmelin!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        krmelinTemp = krmelin(nameLm: "Hezky")
        
        krmelinTemp.downloadWeather { () -> () in
        self.updateUI()
       
        }
    }
    
    func updateUI() {
        tempLbl.text = "\(krmelinTemp.temp) Celsia"
        descLbl.text = "\(krmelinTemp.desc)"
    }
}

