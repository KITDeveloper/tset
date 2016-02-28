//
//  MemosTableViewController.swift
//  memobotter
//
//  Created by Suita Shigeo on 2016/02/28.
//  Copyright © 2016年 SG. All rights reserved.
//

import UIKit

class MemosTableViewController: UITableViewController {
    
    let memoCollection = MemoManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerNib(UINib(nibName: "MemoViewController", bundle: nil), forCellReuseIdentifier: "MemoViewController")
        tableView.estimatedRowHeight = 90
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: UIBarButtonItemStyle.Plain, target: self, action: "showNewMemoViewController")
        let callback = { () -> Void in
            self.tableView.reloadData()
        }
        memoCollection.fetchMemos(callback)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoCollection.memos.count
    }
    
 override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MemoTableViewCell", forIndexPath: indexPath) as! MemoTableViewCell;        let memo = memoCollection.memos[indexPath.row]
        
        cell.titleLabel.text = memo.title
        
        return cell
    }
    
    func showNewMemoViewController() {
        performSegueWithIdentifier("toMemoViewController", sender: nil)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
}