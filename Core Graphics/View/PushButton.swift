//
//  PushButton.swift
//  Core Graphics
//
//  Created by 이동건 on 2018. 2. 1..
//  Copyright © 2018년 이동건. All rights reserved.
//

import UIKit


@IBDesignable
class PushButton: UIButton {
    
    private struct Constants {
        static let plusLineWidth: CGFloat = 3.0
        static let plusButtonScale: CGFloat = 0.5
        static let halfPointShift: CGFloat = 0.5
    }
    
    private var halfWidth: CGFloat {
        return bounds.width / 2 // 50
    }
    
    private var halfHeight: CGFloat {
        return bounds.height / 2 // 50
    }
    
    @IBInspectable var fillColor: UIColor = UIColor.white
    @IBInspectable var isAddButton: Bool = true

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        fillColor.setFill()
        path.fill()
        
        let plusWidth:CGFloat = min(bounds.width, bounds.height) * Constants.plusButtonScale
        let halfPlusWidth = plusWidth/2
        let plusPath = UIBezierPath()
        plusPath.lineWidth = Constants.plusLineWidth
        plusPath.move(to: CGPoint(
            x: halfWidth-halfPlusWidth + Constants.halfPointShift,
            y: halfHeight + Constants.halfPointShift)
        ) // (20.5, 50.5)
        plusPath.addLine(to: CGPoint(
            x: halfWidth + halfPlusWidth + Constants.halfPointShift,
            y: halfHeight + Constants.halfPointShift)
        ) // (80.5, 50.5)
        
        if isAddButton {
            plusPath.move(to: CGPoint(
                x: halfWidth + Constants.halfPointShift,
                y: halfWidth - halfPlusWidth + Constants.halfPointShift)
            )
            plusPath.addLine(to: CGPoint(
                x: halfWidth + Constants.halfPointShift,
                y: halfWidth + halfPlusWidth + Constants.halfPointShift)
            )
        }
        UIColor.white.setStroke()
        plusPath.stroke()
    }
}
