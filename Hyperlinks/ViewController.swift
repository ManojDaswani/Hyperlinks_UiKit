//
//  ViewController.swift
//  Hyperlinks
//
//  Created by Manoj Daswani on 3/11/20.
//
// This is with the Storyboard 
// testing too
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTextView()
    }
    
  func updateTextView() {
        let path = "https://yourwebsite.com/termsofservice"
        let text = textView?.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Terms of Service")
        let font = textView?.font
        let textColor = textView?.textColor
        textView?.attributedText = attributedString
        textView?.font = font
        textView?.textColor = textColor
        
    }
}
