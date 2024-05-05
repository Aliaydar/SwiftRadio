//
//  UIImage+DropShadow.swift
//  SwiftRadio
//
//  Created by Aliaydar Berkimbekov on 15.04.2024.
//

import UIKit

extension UIImageView {

    // APPLY DROP SHADOW
    func applyShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 1)
        layer.shadowOpacity = 0.4
        layer.shadowRadius = 2
    }

}
