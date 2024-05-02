//
//  Cshape.swift
//  iOS Assignment
//
//  Created by Kathiravan Murali on 20/04/24.
//

import Foundation
import SwiftUI

struct Cshape : Shape
{
    func path(in rect: CGRect) -> Path {
        
        return Path{path in
            
            path.move(to: CGPoint(x: 0, y: 35))
            path.addLine(to: CGPoint(x: 0, y: rect.height*2))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height*2))
            path.addLine(to: CGPoint(x: rect.width, y: 35))
            
            path.addArc(center: CGPoint(x: (rect.width/2), y: 35), radius: 35, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
        }
    }
    
    
}
