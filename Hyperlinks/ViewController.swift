//
//  ViewController.swift
//  Hyperlinks
//
//  Created by Manoj Daswani on 3/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTextView()
    }
    
    func updateTextView() {
        
        // the values below are from extension NSAttributedString
        let path = "https://wordpress.com/tos"
        let text = textView.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Terms of Service")
        textView.attributedText = attributedString
    }
    
}

