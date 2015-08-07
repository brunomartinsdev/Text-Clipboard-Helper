//
//  AppDelegate.swift
//  Text Clipboard Helper
//
//  Created by Bruno Lima Martins on 8/5/15.
//  Copyright (c) 2015 Bruno Lima. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        autoPaste()
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    func autoPaste(){
    let scriptToRun = NSAppleScript(source: "tell application \"System Events\" \n keystroke \"v\" using command down \n end tell")
    
    if let script = scriptToRun  {
        var errorFound: NSDictionary?
        script.executeAndReturnError(&errorFound)
        
        if let error = errorFound {
            println("Error found: \(error.debugDescription)")
        }

    }
        NSApplication.sharedApplication().terminate(self)
        
    }

    
 
    
}

