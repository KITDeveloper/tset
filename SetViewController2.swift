//
//  SetViewController2.swift
//  TabTest1
//
//  Created by tatsuya hirano on 2016/03/03.
//  Copyright © 2016年 tatsuya hirano. All rights reserved.
//

import UIKit

class SetViewController2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // sectionのタイトル
    let sectionTitle: NSArray = ["機能", "つぶやき", "リプライ"]
    
    // section毎の項目
    let cellArray1: NSArray = ["全ての機能","つぶやき機能","リプライ","時間指定"]
    let cellArray2: NSArray = ["順番","間隔", "夜間"]
    let cellArray3: NSArray = ["同じアカウントから〜分以内に〜回きたら返信しない","返信するID"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // テーブルビューを作る
        let myTableView = UITableView(frame: view.frame, style: .Grouped)
        // テーブルビューのデリゲートを設定する
        myTableView.delegate = self
        // テーブルビューのデータソースを設定する
        myTableView.dataSource = self
        // テーブルビューを表示する
        view.addSubview(myTableView)
    }
    
    /*　UITableViewDataSourceプロトコル */
    // セクションの個数を決める sectionTitleの数に設定する
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sectionTitle.count
    }
    
    // Table Viewのセルの数を指定
    func tableView(table: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return cellArray1.count
        }
        else if section == 1 {
            return cellArray2.count
        }
        else if section == 2 {
            return cellArray3.count
        }
        else{
            return 0
        }
    }
    
    // セクションのタイトルを決める
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return String(sectionTitle[section])
        }
        else if section == 1 {
            return String(sectionTitle[section])
        }
        else {
            return String(sectionTitle[section])
        }
    }
    
    // 各セルの要素を設定する
    func tableView(table: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Section毎に処理を分ける、ちょっと冗長的です
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "cell")
        
        if indexPath.section == 0 {
            cell.textLabel?.text = String(cellArray1[indexPath.row])
            return cell
        }
        else if indexPath.section == 1 {
            cell.textLabel?.text = String(cellArray2[indexPath.row])
            return cell
        }
        else if indexPath.section == 2 {
            cell.textLabel?.text = String(cellArray3[indexPath.row])
            return cell
        }
        else {
            
        }
        return cell
    }
    
    /* UITableViewDelegateデリゲートメソッド */
    // 行がタップされると実行される
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("セクション\(indexPath.section)")
        print("セル\(indexPath.row)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

