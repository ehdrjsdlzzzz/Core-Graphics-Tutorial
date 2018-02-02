//
//  ViewController.swift
//  Core Graphics
//
//  Created by 이동건 on 2018. 2. 1..
//  Copyright © 2018년 이동건. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterView: CounterView!
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = String(counterView.counter)
    }
    
    @IBAction func pushButtonPressed(_ button: PushButton){
        if button.isAddButton {
            counterView.counter += 1
        }else{
            if counterView.counter > 0 {
                counterView.counter -= 1
            }
        }
        counterLabel.text = String(counterView.counter)
    }
}

