//
//  CustomCorner.swift
//  Salad
//
//  Created by Balaji on 13/11/20.
//

import SwiftUI

struct CustomCorner: Shape {

    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

