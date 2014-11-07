//
//  PaletteContainer.swift
//  KhromaPal
//
//  Created by RoBeRt on 14/11/7.
//  Copyright (c) 2014年 RayWenderlich. All rights reserved.
//

import Foundation

@objc protocol PaletteDisplayContainer {
  func rwt_currentlyDisplayPalette() -> ColorPalette?
}
