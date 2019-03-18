//
//  OnboardingModel.swift
//  OnBoardingScreen
//
//  Created by Olar's Mac on 3/14/19.
//  Copyright © 2019 Adie Olami. All rights reserved.
//

import UIKit

@objcMembers
open class OnBoardingManager {
    
    /// .
    var title: String?
    
    /// .
    var subtitle: String?
    
    /// .
    var icon: String?
    
    /// .
    open var onBoardingViewBackgroundColor: UIColor = .lightGray
    
    /// .
    open var subtitleFontSize: CGFloat = 14.0
    
    /// .
    open var titleFontSize: CGFloat = 20.0
    
    /// .
    open var imageViewcontentMode: UIImageView.ContentMode = .scaleAspectFill
    
    /// .
    open var imageViewclipsToBounds: Bool = true
    
    /// .
    open var imageViewtintColor: UIColor = .white
    
    /// .
    open var imageContainerViewBackgroundColor: UIColor = .clear
    
    /// .
    open var titleLabelTextColor: UIColor = .white
    
    /// .
    open var subtitleLabelTextColor: UIColor = .white
    
    /// .
    init(title: String, subtitle: String, icon: String) {
        self.title = title
        self.subtitle = subtitle
        self.icon = icon
    }
}
