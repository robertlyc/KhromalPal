//
//  NoPaletteSelectedViewController.swift
//  KhromaPal
//
//  Created by RoBeRt on 14/11/10.
//  Copyright (c) 2014年 RayWenderlich. All rights reserved.
//

import UIKit

class NoPaletteSelectedViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.hidesBackButton = true
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    if let svc = splitViewController {
      navigationItem.setLeftBarButtonItem(svc.displayModeButtonItem(), animated: true)
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}
