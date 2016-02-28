//
//  Memo.swift
//  memobotter
//
//  Created by Suita Shigeo on 2016/02/27.
//  Copyright © 2016年 SG. All rights reserved.
//

import UIKit
import Parse

class Memo: NSObject {

    var title: String!
    var text: String!
    init(title: String, text: String) {
        self.title = title
        self.text = text
    }
    
    func saveMemo() {
        let memosObject = PFObject(className: "memos")
        memosObject["title"] = title
        memosObject["text"] = text
        memosObject.saveInBackgroundWithBlock{(success, error) -> Void in
            if success {
                print("Memo has been saved")
            }
        }
    }
    
}
 