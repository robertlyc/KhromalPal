//
//  TraitOverrideViewController.swift
//  KhromaPal
//
//  Created by RoBeRt on 14/11/7.
//  Copyright (c) 2014年 RayWenderlich. All rights reserved.
//

import UIKit

class TraitOverrideViewController: UIViewController {

  override func viewDidLoad() {
      super.viewDidLoad()

      // Do any additional setup after loading the view.
  }

  override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
  }
  
  override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
    var traintOverride: UITraitCollection? = nil
    if size.width > 404 {
      traintOverride = UITraitCollection(horizontalSizeClass: .Regular)
    }
    setOverrideTraitCollection(traintOverride, forChildViewController: childViewControllers[0] as UIViewController)
    super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
    
  }
}
