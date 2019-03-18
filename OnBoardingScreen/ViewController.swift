//
//  ViewController.swift
//  OnBoardingScreen
//
//  Created by Olar's Mac on 3/14/19.
//  Copyright © 2019 Adie Olami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let onBordingViews = [
        OnBoardingManager(title: "Lorem ipsum", subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ornare vestibulum urna eget fermentum. Vivamus semper et nisi sed venenatis. Donec molestie consequat congue", icon: "add"),
        OnBoardingManager(title: "Lorem ipsum", subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ornare vestibulum urna eget fermentum. Vivamus semper et nisi sed venenatis. Donec molestie consequat congue", icon: "bluetooth"),
        OnBoardingManager(title: "Lorem ipsum", subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ornare vestibulum urna eget fermentum. Vivamus semper et nisi sed venenatis. Donec molestie consequat congue.", icon: "blueprint"),
        OnBoardingManager(title: "Lorem ipsum", subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ornare vestibulum urna eget fermentum. Vivamus semper et nisi sed venenatis. Donec molestie consequat congue", icon: "back"),
        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onBordingViews.forEach { (manager) in
            // Changing the background
//            manager.subtitleLabelTextColor = UIColor.green
            onBoardingFunc()
        }
    }

    fileprivate func onBoardingFunc() {
        let onBoardingPC = self.onBoardingPC()
        onBoardingPC.delegate = self
        self.addChildViewControllerWithView(onBoardingPC)
    }
    
    
}

extension ViewController: OnboardingVCDelegate {
    func onBoardingDidStartFlow(_vc: OnboardingPC) {
        //
    }
    
    func onBoardingDidFinishFlow(_ vc: OnboardingPC) {
        UIView.transition(with: self.view, duration: 1, options: .transitionFlipFromLeft, animations: {
            vc.view.removeFromSuperview()
            let viewControllerToBePresented = LandingVC(nibName: LANDINGVC, bundle: nil)
            //                UIViewController()
            let navController = UINavigationController(rootViewController:viewControllerToBePresented)
            self.addChild(navController)
            navController.view.frame = self.view.bounds
            self.view.addSubview(navController.view)
        }, completion: nil)
    }
    
    fileprivate func onBoardingPC() -> OnboardingPC {
        let viewControllers = onBordingViews.map { OnboardingContainerVC(manager: $0, nibName: ONBOARDINGCONTAINERVC, bundle: nil) }
        return OnboardingPC(nibName: ONBOARDINGPC,
                            bundle: nil,
                            viewControllers: viewControllers)
    }
}
