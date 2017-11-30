//
//  WorkoutSummaryView.swift
//  ActivityPT
//
//  Created by Luis Arias on 11/30/17.
//  Copyright © 2017 Terco. All rights reserved.
//

import UIKit

final class WorkoutSummaryView: RingView {
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    let strokeWidth: CGFloat = 10.0
    let gap: CGFloat = 2.0
    let radius: CGFloat = 50.0
    
    addRing(identifier: "", radius: radius + strokeWidth + gap, color: .black, amount: 1, strokeWidth: 3 * (strokeWidth + gap))
    addRing(identifier: RingViewConstants.activityRing, radius: radius + 2 * (gap + strokeWidth), color: .red, amount: 0.8, strokeWidth: strokeWidth)
    addRing(identifier: RingViewConstants.exerciseRing, radius: radius + gap + strokeWidth, color: .green, amount: 0.3, strokeWidth: strokeWidth)
    addRing(identifier: RingViewConstants.standRing, radius: radius, color: .blue, amount: 0.2, strokeWidth: strokeWidth)
  }
}
