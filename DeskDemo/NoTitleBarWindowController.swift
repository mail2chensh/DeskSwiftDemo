//
//  NoTitleBarWindowController.swift
//  DeskDemo
//
//  Created by dev on 16/7/28.
//  Copyright © 2016年 Chensh. All rights reserved.
//

import Foundation
import Cocoa

class NoTitleBarWindowController: NSWindowController {
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        if let window = self.window {
            window.titleVisibility = .hidden
            window.titlebarAppearsTransparent = true
        }
    }
}
