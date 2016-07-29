//
//  AppDelegate.swift
//  DeskDemo
//
//  Created by dev on 16/7/28.
//  Copyright © 2016年 Chensh. All rights reserved.
//

import Cocoa



@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSToolbarDelegate {

    @IBOutlet var window:NSWindow!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        self.setToolBar();
    }
    
    func setToolBar() {
        let toolbar:NSToolbar = NSToolbar(identifier: "AppToolbar");
        toolbar.allowsUserCustomization = false;
        toolbar.autosavesConfiguration = false;
        toolbar.displayMode = .iconAndLabel;
        toolbar.sizeMode = .small;
        toolbar.delegate = self;
        
        self.window.toolbar = toolbar;
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func toolbarAllowedItemIdentifiers(_ toolbar: NSToolbar) -> [String] {
        return ["FontSetting", "Save"];
    }
    
    func toolbarDefaultItemIdentifiers(_ toolbar: NSToolbar) -> [String] {
        return ["FontSetting", "Save"];
    }
    
    func toolbar(_ toolbar: NSToolbar, itemForItemIdentifier itemIdentifier: String, willBeInsertedIntoToolbar flag: Bool) -> NSToolbarItem? {
        
        let toolbarItem:NSToolbarItem = NSToolbarItem(itemIdentifier: itemIdentifier)
        
        if (itemIdentifier.isEqual("FontSetting")) {
            
            toolbarItem.label = "Font";
            toolbarItem.paletteLabel = "Font";
            toolbarItem.toolTip = "Font Setting";
            toolbarItem.image = NSImage(named: "FontSetting");
            toolbarItem.tag = 1;
        
        } else if (itemIdentifier.isEqual("Save")) {
            
            toolbarItem.label = "Save";
            toolbarItem.paletteLabel = "Save";
            toolbarItem.toolTip = "Save File";
            toolbarItem.image = NSImage(named: "Save");
            toolbarItem.tag = 1;
            
        } else {
            
            return nil;
            
        }
        
        toolbarItem.minSize = CGSize(width: 25, height: 25)
        toolbarItem.maxSize = CGSize(width: 100, height: 100)
        
        toolbarItem.target = self;
        toolbarItem.action = #selector(AppDelegate.toolbarItemDidClick);
        
        return toolbarItem;
        
    }
    
    func toolbarItemDidClick() {
        
    }


}

