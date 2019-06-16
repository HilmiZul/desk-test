//
//  ViewController.swift
//  Desk
//
//  Created by Zul Hilmi on 16/06/19.
//  Copyright © 2019 Zul Hilmi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    
    @IBOutlet weak var label: NSTextField!
    @IBOutlet weak var inputText: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func btnAction(_ sender: Any) {
        
        if inputText.stringValue.isEmpty {
            let alert = NSAlert()
            alert.messageText = "ERROR!"
            alert.informativeText = "Masukkan teks"
            alert.alertStyle = .warning
            alert.runModal()
        } else {
            label.stringValue = inputText.stringValue
        }
    }
}

