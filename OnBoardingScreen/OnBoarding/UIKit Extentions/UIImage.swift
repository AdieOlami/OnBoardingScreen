//
//  UIImage.swift
//  OnBoardingScreen
//
//  Created by Olar's Mac on 3/14/19.
//  Copyright © 2019 Adie Olami. All rights reserved.
//

import UIKit

extension UIImage {
    static func localImage(_ name: String, template: Bool = false) -> UIImage {
        var image = UIImage(named: name)!
        if template {
            image = image.withRenderingMode(.alwaysTemplate)
        }
        return image
    }
}
