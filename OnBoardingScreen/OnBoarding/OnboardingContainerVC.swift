//
//  OnboardingContaineVC.swift
//  Copyright © 2019 Adie Olami. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
import UIKit

class OnboardingContainerVC: UIViewController {
    
    @IBOutlet var containerView: UIView!
    @IBOutlet var imageContainerView: UIView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    
    internal weak var manager: OnBoardingManager!
    
    init(manager: OnBoardingManager,
         nibName nibNameOrNil: String?,
         bundle nibBundleOrNil: Bundle?) {
        self.manager = manager
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        imageView.image = UIImage.localImage(manager.icon ?? "add", template: true)
        imageView.contentMode = manager.imageViewcontentMode
        imageView.clipsToBounds = manager.imageViewclipsToBounds
        imageView.tintColor = manager.imageViewtintColor
        imageContainerView.backgroundColor = manager.imageContainerViewBackgroundColor
        
        titleLabel.text = manager.title
        titleLabel.font = UIFont.boldSystemFont(ofSize: (manager?.titleFontSize)!)
        titleLabel.textColor = manager.titleLabelTextColor
        
        subtitleLabel.attributedText = NSAttributedString(string: manager.subtitle ?? "")
        subtitleLabel.font = UIFont.systemFont(ofSize: (manager?.subtitleFontSize)!)
        subtitleLabel.textColor = manager.subtitleLabelTextColor
        
        containerView.backgroundColor = manager.onBoardingViewBackgroundColor
    }

}
