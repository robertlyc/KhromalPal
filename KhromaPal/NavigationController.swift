//
//  NavigationController.swift
//  KhromaPal
//
//  Created by RoBeRt on 14/11/7.
//  Copyright (c) 2014年 RayWenderlich. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController, PaletteDisplayContainer, PaletteSelectionContainer {

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }
  
  func rwt_currentlyDisplayPalette() -> ColorPalette? {
    if let tvc = topViewController as? PaletteDisplayContainer {
      return tvc.rwt_currentlyDisplayPalette()
    }
    return nil
  }
  
  func rwt_currentlySelectedPalette() -> ColorPalette? {
    if let tvc = topViewController as? PaletteSelectionContainer {
      return tvc.rwt_currentlySelectedPalette()
    }
    return nil
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
    

  
}
