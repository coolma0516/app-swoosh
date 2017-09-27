//
//  BoarderButton.swift
//  app-swoosh
//
//  Created by Jian Ma on 2017/9/23.
//  Copyright © 2017年 Jian Ma. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }
    
    
}
