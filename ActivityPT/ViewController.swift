//
//  ViewController.swift
//  ActivityPT
//
//  Created by Luis Arias on 11/30/17.
//  Copyright © 2017 Terco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var ringView: RingView!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func sliderValueChanged(sender: UISlider) {
    ringView.setAmount(amount: CGFloat(sender.value), forIdentifier: RingViewConstants.activityRing)
  }
}

