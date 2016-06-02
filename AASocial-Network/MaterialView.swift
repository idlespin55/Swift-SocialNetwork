//
//  MaterialView.swift
//  AASocial-Network
//
//  Created by Ajmal Ahmady on 6/2/16.
//  Copyright © 2016 FrontierGroup. All rights reserved.
//  FONTS NOTE: REMEMBER TO INPUT "FONTS PROVIDED BY APPLICATION" (IN INFO.PLIST) TO USE NEW FONTS IN APPLICATION

import UIKit

class MaterialView: UIView {
    
    override func awakeFromNib() {
        layer.cornerRadius = CORNER_RADIUS
        layer.shadowColor = UIColor(red: SHADOW_COLOR, green: SHADOW_COLOR, blue: SHADOW_COLOR, alpha: alpha).CGColor
        layer.shadowOpacity = SHADOW_OPACITY
        layer.shadowRadius = SHADOW_RADIUS
        layer.shadowOffset = CGSizeMake(SHADOW_OFFSET_X, SHADOW_OFFSET_Y)   //Offset to x & y-axis
    }
}