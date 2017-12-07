//
//  DrawingView.swift
//  Connor_CSP
//
//  Created by Oleary, CONNOR on 12/7/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class DrawingView : UIView
{
    override public func draw(_ rect: CGRect)
    {
        
    }
    
    private func drawStickFigure() -> UIBezierPath
    {
        let stickFigure = UIBezierPath()
        UIColor.magenta.setStroke()
        stickFigure.lineWidth = 3.0
        
        stickFigure.addArc(withCenter: CGPoint(x: 200, y: 200),
                           radius: CGFloat(20),
                           startAngle: CGFloat(0),
                           endAngle: CGFloat(2)*CGFloat.pi,
                           clockwise: true)
        stickFigure.move(to: CGPoint(x: 200, y:220))
        
        return stickFigure
    }
    
    public func drawHappyTree() -> Void
    {
        
    }
    
    private func drawTurtle() -> Void
    {
        
    }
}
