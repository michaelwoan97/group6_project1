//
//  RoundButton.swift
//  project1
//
//  Created by Nguyen Nghia on 2021-10-22.
//  REFERENCE   : https://medium.com/@filswino/easiest-implementation-of-rounded-buttons-in-xcode-6627efe39f84
//

import Foundation
import UIKit

@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
        self.layer.cornerRadius = cornerRadius
        }
    }

    @IBInspectable var borderWidth: CGFloat = 0{
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }

    @IBInspectable var borderColor: UIColor = UIColor.clear{
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
}
