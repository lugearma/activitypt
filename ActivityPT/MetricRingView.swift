//
//  MetricRingView.swift
//  ActivityPT
//
//  Created by Luis Arias on 11/30/17.
//  Copyright © 2017 Terco. All rights reserved.
//

import UIKit

/*protocol MetricRingViewProtocol: class {
  func setupView()
}

extension MetricRingViewProtocol {
  func setupView() {
    print("Hola")
  }
}*/


class MetricRingView: RingView {
  
  var ringColor: UIColor?
  var ringBackgroundColor: UIColor?
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupView()
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }
  
  func setupView() {}
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    let radius = bounds.width / 2
    let strokeWidth: CGFloat = 10
    
    backgroundView.color = backgroundColor
    
    addRing(identifier: "", radius: radius - strokeWidth, color: ringColor ?? .white, amount: 0.5, strokeWidth: strokeWidth)
  }
  
}

//extension MetricRingView: MetricRingViewProtocol {}

