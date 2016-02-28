//
//  MemoManager.swift
//  memobotter
//
//  Created by Suita Shigeo on 2016/02/27.
//  Copyright © 2016年 SG. All rights reserved.
//

import UIKit
import Parse

class MemoManager: NSObject {
    
    var memos : Array<Memo> = []
    static let sharedInstance = MemoManager()
    
    func fetchMemos(callback: () -> Void) {
        let query = PFQuery(className: "memos")
        query.orderByDescending("createdAt")
        query.findObjectsInBackgroundWithBlock {(memos, error) -> Void in
            if error == nil {
                self.memos = []
                for memo in memos! as Array<PFObject> {
                    let title = memo["title"] as! String
                    let text = memo["text"] as! String
                    let memo = Memo(title: title, text: text)
                    self.memos.append(memo)
                }
                callback()
         }
        }
    }
    
    // TableView の各セクションのセルの数を返す
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memos.count
    }
    
    // 各セルの内容を返す
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // 再利用可能な cell を得る
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        
        // Cellに値を設定する.
        let object = memos[indexPath.row]
        cell.textLabel?.text = object.title
       
        return cell
    }

}
