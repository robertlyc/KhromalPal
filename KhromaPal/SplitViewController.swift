//
//  SplitViewController.swift
//  KhromaPal
//
//  Created by RoBeRt on 14/11/7.
//  Copyright (c) 2014年 RayWenderlich. All rights reserved.
//

import UIKit

class SplitViewController: UISplitViewController, UISplitViewControllerDelegate {

  override func viewDidLoad() {
    super.viewDidLoad()
    delegate = self
  }
  
  func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController!, ontoPrimaryViewController primaryViewController: UIViewController!) -> Bool {
    return true
  }
  
  func splitViewController(splitViewController: UISplitViewController, separateSecondaryViewControllerFromPrimaryViewController primaryViewController: UIViewController!) -> UIViewController? {
    if let paletteDisplayCont = primaryViewController as? PaletteDisplayContainer {
      if paletteDisplayCont.rwt_currentlyDisplayPalette() != nil {
        return nil
      }
    }
    let vc = storyboard?.instantiateViewControllerWithIdentifier("NoPaletteSelected") as UIViewController
    return NavigationController(rootViewController: vc)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}
