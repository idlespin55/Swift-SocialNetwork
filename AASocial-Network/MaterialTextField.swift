//
//  MaterialTextField.swift
//  AASocial-Network
//
//  Created by Ajmal Ahmady on 6/2/16.
//  Copyright © 2016 FrontierGroup. All rights reserved.
//

import UIKit

class MaterialTextField: UITextField {

    override func awakeFromNib() {
        layer.cornerRadius = CORNER_RADIUS
        layer.borderColor = UIColor(red: SHADOW_COLOR, green: SHADOW_COLOR, blue: SHADOW_COLOR, alpha: alpha).CGColor
        layer.borderWidth = BORDER_WIDTH
    }
    
    // This function will move the placeholder text 10 spaces to the right
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, MOVE_X_SPACES, MOVE_Y_SPACES)
    }
    
    // This function will move the editable text text 10 spaces to the right
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, MOVE_X_SPACES, MOVE_Y_SPACES)
    }
}