//
//  RingView.swift
//  ActivityPT
//
//  Created by Luis Arias on 11/30/17.
//  Copyright © 2017 Terco. All rights reserved.
//

import UIKit

struct RingViewConstants {
  static let pi = Double.pi
  
  static let activityRing = "activity"
  static let exerciseRing = "exercise"
  static let standRing = "stand"
}

class RingBackgroundView: UIView {
  
  var color: UIColor?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    let backgroundLayer = CAShapeLayer()
    backgroundLayer.path = UIBezierPath(ovalIn: bounds).cgPath
    backgroundLayer.fillColor = color?.cgColor ?? UIColor.blue.cgColor
    
    layer.addSublayer(backgroundLayer)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}


class RingView: UIView {
  
  private var rings = [String: CAShapeLayer]()
  var backgroundView: RingBackgroundView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    backgroundView = RingBackgroundView(frame: bounds)
    addSubview(backgroundView)
  }
  
  func addRing(identifier: String, radius: CGFloat, color: UIColor, amount: CGFloat, strokeWidth: CGFloat) {
    let ringLayer = CAShapeLayer()
    let width = bounds.width / 2.0
    let height = bounds.height / 2.0
    let center = CGPoint(x: width, y: height)
    let startAngle = CGFloat(-RingViewConstants.pi/2)
    let endAngle = CGFloat((RingViewConstants.pi/2) * 3)
    
    ringLayer.path = UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true).cgPath
    ringLayer.fillColor = UIColor.clear.cgColor
    ringLayer.strokeStart = 0
    ringLayer.strokeEnd = amount
    ringLayer.strokeColor = color.cgColor
    ringLayer.lineWidth = strokeWidth
    ringLayer.lineCap = kCALineCapRound
    
    layer.addSublayer(ringLayer)
    rings[identifier] = ringLayer
  }
  
  func setAmount(amount: CGFloat, forIdentifier identifier: String) {
    let ring = rings[identifier]
    ring?.strokeEnd = amount
  }
}
