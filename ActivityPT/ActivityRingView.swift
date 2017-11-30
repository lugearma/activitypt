//
//  ActivityRingView.swift
//  ActivityPT
//
//  Created by Luis Arias on 11/30/17.
//  Copyright © 2017 Terco. All rights reserved.
//

import UIKit

class ActivityRingView: MetricRingView {
  
  override func awakeFromNib() {
    super.awakeFromNib()
    setupView()
  }
  
  override func setupView() {
    ringBackgroundColor = .red
    ringColor = .brown
  }
}
