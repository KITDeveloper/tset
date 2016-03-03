//
//  InputViewController.swift
//  TabTest1
//
//  Created by tatsuya hirano on 2016/03/03.
//  Copyright © 2016年 tatsuya hirano. All rights reserved.
//

import UIKit
import RealmSwift

class InputViewController: UIViewController {

    @IBOutlet weak var bodyTextView: UITextView!
    @IBOutlet weak var textView: UITextView!
    
    let realm = try! Realm()
    var diary: Diary!
    
    @IBAction func save(sender: UIButton) {
        try! realm.write{
            self.diary.title = self.textView.text!
            self.diary.body = self.bodyTextView.text
            self.diary.date = NSDate()
            self.realm.add(self.diary, update: true)
        }
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // コメントのTextViewに枠をつける。
        textView.layer.borderWidth = 0.5
        // 枠の色を設定する。
        textView.layer.borderColor = UIColor.lightGrayColor().CGColor
        // 枠の角を丸くする。
        textView.layer.cornerRadius = 8
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
