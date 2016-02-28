//
//  InputViewController.swift
//  memobotter
//
//  Created by Suita Shigeo on 2016/02/27.
//  Copyright © 2016年 SG. All rights reserved.
//


import UIKit

class InputViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    @IBOutlet weak var save: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bodyTextView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   
    @IBAction func saveMemoBtn(sender: UIButton) {
        if titleTextField.text!.isEmpty || bodyTextView.text.isEmpty {
            print("Name or text is empty")
        } else {
            let memo = Memo(title: titleTextField.text!, text: bodyTextView.text)
            memo.saveMemo()
            navigationController?.popViewControllerAnimated(true)
        }
    }
    
}

